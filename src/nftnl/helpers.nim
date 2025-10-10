# True if the integer fits within 32 bits (decided at compile time).
template fitsU32*(x: typed): bool =
  sizeof(x) <= 4

# Convert an integer-like value (int, uint, etc.) to its C-compatible width.
template toCWidth*(x: typed): untyped =
  when fitsU32(x): x.uint32 else: x.uint64

# Normalize an enum or integer value to a plain integer for FFI use.
template asIntLike*(x: typed): untyped =
  when typeof(x) is enum:
    ord(x)
  else:
    x
