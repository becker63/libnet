cmake_minimum_required(VERSION 3.20)
project(lpm-consumer LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Protobuf CONFIG REQUIRED)
find_package(libprotobuf-mutator CONFIG REQUIRED)

# Generate protobuf sources from schema/Use the schema directory for .proto files
set(PROTO_SCHEMA_DIR ${CMAKE_SOURCE_DIR}/schema)
protobuf_generate_cpp(TREE_PROTO_SRCS TREE_PROTO_HDRS ${PROTO_SCHEMA_DIR}/test.proto)

# Make sure generated headers are visible
include_directories(${CMAKE_CURRENT_BINARY_DIR})

# Fuzz target executable
add_executable(lpm-consumer-fuzz
  mutator/test.cpp
  ${TREE_PROTO_SRCS}
  ${TREE_PROTO_HDRS}
)

target_link_libraries(lpm-consumer-fuzz PRIVATE
  protobuf::libprotobuf
  libprotobuf-mutator::protobuf-mutator
  libprotobuf-mutator::protobuf-mutator-libfuzzer
  unwind
)

# Clang/LLVM fuzzing options (libFuzzer + Address/UB sanitizers)
if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  target_compile_options(lpm-consumer-fuzz PRIVATE
    -fsanitize=fuzzer-no-link,address,undefined
    -fno-omit-frame-pointer
    -g
  )
  target_link_options(lpm-consumer-fuzz PRIVATE
    -fsanitize=fuzzer,address,undefined
  )
endif()
