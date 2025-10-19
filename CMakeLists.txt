cmake_minimum_required(VERSION 3.20)
project(lpm-consumer LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Protobuf CONFIG REQUIRED)
find_package(libprotobuf-mutator CONFIG REQUIRED)

# ✅ Add prometheus-cpp (from Nix or system package)
find_package(prometheus-cpp CONFIG REQUIRED)

# ---------------------------------------------------------------------------
# Protobuf generation
# ---------------------------------------------------------------------------
set(PROTO_SCHEMA_DIR ${CMAKE_SOURCE_DIR}/schema)
protobuf_generate_cpp(RAW_PROTO_SRCS RAW_PROTO_HDRS
  ${PROTO_SCHEMA_DIR}/raw.proto
)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

# ---------------------------------------------------------------------------
# Build Nim fuzz library (using --app:lib)
# ---------------------------------------------------------------------------
set(NIM_LIB_PATH ${CMAKE_BINARY_DIR}/libnetfuzz${CMAKE_SHARED_LIBRARY_SUFFIX})

add_custom_command(
  OUTPUT ${NIM_LIB_PATH}
  COMMAND nim c -d:release -g --mm:orc --threads:on --app:lib
          --opt:speed
          --passC=-O3
          --passC=-fomit-frame-pointer
          --out:${NIM_LIB_PATH}
          harness/export_fuzz.nim
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
  COMMENT "Building Nim fuzz library (release mode)"
)

add_custom_target(nimlib ALL DEPENDS ${NIM_LIB_PATH})

add_library(libnetfuzz SHARED IMPORTED)
set_target_properties(libnetfuzz PROPERTIES IMPORTED_LOCATION ${NIM_LIB_PATH})
add_dependencies(libnetfuzz nimlib)

# ---------------------------------------------------------------------------
# Fuzz target
# ---------------------------------------------------------------------------
add_executable(lpm-consumer-fuzz
  mutator/test.cpp
  ${RAW_PROTO_SRCS}
  ${RAW_PROTO_HDRS}
)

target_include_directories(lpm-consumer-fuzz PRIVATE
  ${CMAKE_SOURCE_DIR}/harness
)

target_link_libraries(lpm-consumer-fuzz PRIVATE
  protobuf::libprotobuf
  libprotobuf-mutator::protobuf-mutator
  libprotobuf-mutator::protobuf-mutator-libfuzzer
  unwind
  libnetfuzz

  # ✅ Prometheus C++ core libraries
  prometheus-cpp::core
  prometheus-cpp::pull
)

# ---------------------------------------------------------------------------
# Sanitizer options (Clang / libFuzzer)
# ---------------------------------------------------------------------------
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
