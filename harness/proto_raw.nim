# harness/proto_raw.nim
import protobuf_serialization
import protobuf_serialization/proto_parser

# Generate Nim types and (de)serializers at compile time
import_proto3 "../schema/raw.proto"
