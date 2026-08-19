/-!
# S-expression lexer and parser for the Vermilion textual IR

The IR (`docs/ir.md`) is the contract between the Rust front half and this
library. Lexing is a proper tokenizer over the character stream — tokens are
produced with source positions and the parser is a recursive descent over the
token list. No substring lookahead anywhere.
-/

namespace Vermilion.Ir

/-- 1-based position inside an IR document. -/
structure Pos where
  line : Nat := 1
  column : Nat := 1
  deriving Repr, BEq, Inhabited

instance : ToString Pos := ⟨fun p => s!"{p.line}:{p.column}"⟩

/-- A lexical token of the IR, tagged with its source position. -/
inductive Token where
  | lparen (pos : Pos)
  | rparen (pos : Pos)
  | int (value : Int) (pos : Pos)
  | sym (name : String) (pos : Pos)
  | str (value : String) (pos : Pos)
  deriving Repr, BEq, Inhabited

namespace Token

def pos : Token → Pos
  | .lparen p | .rparen p | .int _ p | .sym _ p | .str _ p => p

def describe : Token → String
  | .lparen _ => "`(`"
  | .rparen _ => "`)`"
  | .int v _ => s!"integer {v}"
  | .sym s _ => s!"symbol `{s}`"
  | .str s _ => s!"string {repr s}"

end Token

/-- Characters that may start a symbol. -/
def isSymbolStart (c : Char) : Bool :=
  c.isAlpha || c == '_'

/-- Characters that may continue a symbol. -/
def isSymbolChar (c : Char) : Bool :=
  c.isAlphanum || c == '_' || c == '.' || c == '-'

private structure LexState where
  chars : List Char
  pos : Pos := {}

/-- Consume one character, advancing the position. -/
private def LexState.advance (state : LexState) (c : Char) (rest : List Char) :
    LexState :=
  { chars := rest
    pos :=
      if c == '\n' then { line := state.pos.line + 1, column := 1 }
      else { state.pos with column := state.pos.column + 1 } }

private def lexError (state : LexState) (message : String) : Except String α :=
  .error s!"lexical error at {state.pos}: {message}"

private partial def lexString
    (state : LexState) (acc : List Char) : Except String (String × LexState) :=
  match state.chars with
  | [] => lexError state "unterminated string literal"
  | '"' :: rest => .ok (String.ofList acc.reverse, state.advance '"' rest)
  | '\\' :: escaped :: rest =>
    let continue_ (c : Char) :=
      lexString ((state.advance '\\' (escaped :: rest)).advance escaped rest) (c :: acc)
    match escaped with
    | '\\' => continue_ '\\'
    | '"' => continue_ '"'
    | 'n' => continue_ '\n'
    | other => lexError state s!"unknown escape `\\{other}`"
  | '\\' :: [] => lexError state "unterminated escape"
  | '\n' :: _ => lexError state "newline inside string literal (use \\n)"
  | c :: rest => lexString (state.advance c rest) (c :: acc)

private partial def lexRun
    (keep : Char → Bool) (state : LexState) (acc : List Char) :
    String × LexState :=
  match state.chars with
  | c :: rest =>
    if keep c then lexRun keep (state.advance c rest) (c :: acc)
    else (String.ofList acc.reverse, state)
  | [] => (String.ofList acc.reverse, state)

private partial def lexTokens
    (state : LexState) (acc : List Token) : Except String (List Token) :=
  match state.chars with
  | [] => .ok acc.reverse
  | c :: rest =>
    if c == ';' then
      -- Comment to end of line.
      lexTokens { state with chars := rest.dropWhile (· != '\n') } acc
    else if c.isWhitespace then
      lexTokens (state.advance c rest) acc
    else if c == '(' then
      lexTokens (state.advance c rest) (.lparen state.pos :: acc)
    else if c == ')' then
      lexTokens (state.advance c rest) (.rparen state.pos :: acc)
    else if c == '"' then do
      let (value, next) ← lexString (state.advance c rest) []
      lexTokens next (.str value state.pos :: acc)
    else if c.isDigit || (c == '-' && (rest.head?.map Char.isDigit).getD false) then
      let (digits, next) := lexRun Char.isDigit (state.advance c rest) []
      let magnitude := digits.foldl (fun n d => n * 10 + (d.toNat - '0'.toNat)) 0
      let seed := if c == '-' then 0 else c.toNat - '0'.toNat
      let value : Int :=
        if c == '-' then -(Int.ofNat magnitude)
        else Int.ofNat (seed * 10 ^ digits.length + magnitude)
      lexTokens next (.int value state.pos :: acc)
    else if isSymbolStart c then
      let (tail, next) := lexRun isSymbolChar (state.advance c rest) []
      lexTokens next (.sym (String.ofList [c] ++ tail) state.pos :: acc)
    else
      lexError state s!"unexpected character `{c}`"

/-- Tokenize a whole IR file. -/
def lex (input : String) : Except String (List Token) :=
  lexTokens { chars := input.toList } []

/-- Parsed S-expression. Atoms keep their lexical class and position. -/
inductive Sexp where
  | sym (name : String) (pos : Pos)
  | int (value : Int) (pos : Pos)
  | str (value : String) (pos : Pos)
  | list (items : Array Sexp) (pos : Pos)
  deriving Repr, Inhabited

namespace Sexp

def pos : Sexp → Pos
  | .sym _ p | .int _ p | .str _ p | .list _ p => p

def describe : Sexp → String
  | .sym s _ => s!"symbol `{s}`"
  | .int v _ => s!"integer {v}"
  | .str s _ => s!"string {repr s}"
  | .list items _ => s!"list of {items.size}"

/-- Head symbol of a list form, if any. -/
def head? : Sexp → Option String
  | .list items _ =>
    match items[0]? with
    | some (Sexp.sym s _) => some s
    | _ => none
  | _ => none

end Sexp

private partial def parseOne :
    List Token → Except String (Sexp × List Token)
  | [] => .error "parse error: unexpected end of input"
  | .lparen pos :: rest => do
    let (items, remaining) ← parseItems rest #[] pos
    .ok (.list items pos, remaining)
  | .rparen pos :: _ => .error s!"parse error at {pos}: unexpected `)`"
  | .int v pos :: rest => .ok (.int v pos, rest)
  | .sym s pos :: rest => .ok (.sym s pos, rest)
  | .str s pos :: rest => .ok (.str s pos, rest)
where
  parseItems (tokens : List Token) (acc : Array Sexp) (openPos : Pos) :
      Except String (Array Sexp × List Token) :=
    match tokens with
    | [] => .error s!"parse error: `(` at {openPos} is never closed"
    | .rparen _ :: rest => .ok (acc, rest)
    | _ => do
      let (item, rest) ← parseOne tokens
      parseItems rest (acc.push item) openPos

/-- Parse a token stream into top-level S-expressions. -/
def parse (tokens : List Token) : Except String (Array Sexp) := do
  let mut remaining := tokens
  let mut out := #[]
  while !remaining.isEmpty do
    let (item, rest) ← parseOne remaining
    out := out.push item
    remaining := rest
  return out

/-- Lex and parse an IR document. -/
def readSexps (input : String) : Except String (Array Sexp) := do
  parse (← lex input)

end Vermilion.Ir
