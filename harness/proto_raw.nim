# Bring the pragmas/types/macros into scope:
import protobuf_serialization # <-- this defines {.proto3.}, {.proto2.}, etc.
import protobuf_serialization/proto_parser # <-- this exposes import_proto3

# Path is relative to THIS file at compile time
# (the macro resolves relative to parentDir(instantiationInfo(...).filename))
import_proto3 "../schema/raw.proto" # or "../schema/raw.proto3" if you rename
