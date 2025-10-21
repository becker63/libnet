## mutator/coverage.nim
## Provides: ensureCoverageRegistration(), flushCoverage()
## exported for use by C++ fuzz harness.

import std/[dynlib, os, strformat, sequtils, strutils, posix, envvars]

# ────────────────────────────────────────────────────────────────
# Types for calling into LLVM coverage runtime
# ────────────────────────────────────────────────────────────────
type
  RegisterFn = proc() {.cdecl.}
  FlushFn = proc() {.cdecl.}

# ────────────────────────────────────────────────────────────────
# Helper: enumerate likely loaded libraries from /proc/self/maps
# (fallback to known .so names if maps can't be read)
# ────────────────────────────────────────────────────────────────
proc findSharedLibs(): seq[string] =
  let mapsPath = "/proc/self/maps"
  if fileExists(mapsPath):
    try:
      for line in lines(mapsPath):
        # example line: 7f09dca9d000-7f09dcb0d000 r--p 00000000 fd:00 123456 /usr/lib/libnftnl.so.11.4.0
        if line.contains(".so"):
          let parts = line.splitWhitespace()
          if parts.len >= 6:
            let path = parts[^1]
            if path.startsWith("/"):
              result.add path
      result = result.deduplicate()
      return result
    except CatchableError:
      discard
  # fallback for static builds or permission restrictions
  return @["libnftnl.so.11", "libmnl.so.0", "libnetfuzz.so"]

# ────────────────────────────────────────────────────────────────
# Coverage registration
# ────────────────────────────────────────────────────────────────
proc ensureCoverageRegistration*() {.
    exportc: "ensureCoverageRegistration", cdecl, dynlib
.} =
  ## Attempts to call __llvm_profile_register_functions() in all loaded DSOs.
  echo "[cov] 🧩 Ensuring LLVM coverage registration..."
  for libPath in findSharedLibs():
    let lib = loadLib(libPath, globalSymbols = false)
    if lib.isNil:
      continue
    let reg = cast[RegisterFn](symAddr(lib, "__llvm_profile_register_functions"))
    if reg != nil:
      reg()
      echo &"[cov] 🔗 Registered coverage for {libPath}"
    unloadLib(lib)
  echo "[cov] ✅ Registration complete."

# ────────────────────────────────────────────────────────────────
# Coverage flush
# ────────────────────────────────────────────────────────────────
proc flushCoverage*() {.exportc: "flushCoverage", cdecl, dynlib.} =
  ## Flushes coverage counters to disk using LLVM_PROFILE_FILE.
  let profFile = fmt"/tmp/fuzz-{getPid()}.profraw"
  putEnv("LLVM_PROFILE_FILE", profFile) # ✅ use putEnv instead of setEnv

  let self = loadLib()
  if self.isNil:
    echo "[cov] ⚠️ Unable to load self library."
    return

  let flushSym = cast[FlushFn](symAddr(self, "__llvm_profile_flush_file"))
  let writeSym = cast[FlushFn](symAddr(self, "__llvm_profile_write_file"))

  if flushSym != nil:
    flushSym()
    echo &"[cov] 💾 Flushed coverage to {profFile}"
  elif writeSym != nil:
    writeSym()
    echo &"[cov] 💾 Wrote coverage file to {profFile}"
  else:
    echo "[cov] ⚠️ No llvm_profile_* symbols found."

  unloadLib(self)
