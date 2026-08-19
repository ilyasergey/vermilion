/-!
# File emission

Deterministic, change-detecting writes: a re-run that produces identical
content must not touch the file (mtime included), so downstream builds and
watch mode see real changes only.
-/

namespace Vermilion.Ir

structure Emission where
  path : System.FilePath
  changed : Bool
  bytes : Nat

/-- Write `content` to `path` unless it already holds exactly that text. -/
def emitFile (path : System.FilePath) (content : String) : IO Emission := do
  let existing ← try some <$> IO.FS.readFile path catch _ => pure none
  if existing == some content then
    return { path, changed := false, bytes := content.utf8ByteSize }
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path content
  return { path, changed := true, bytes := content.utf8ByteSize }

end Vermilion.Ir
