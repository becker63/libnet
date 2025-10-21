cmake_minimum_required(VERSION 3.20)
project(lpm-consumer LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# ---------------------------------------------------------------------------
# Dependencies
# ---------------------------------------------------------------------------
find_package(Protobuf CONFIG REQUIRED)
find_package(libprotobuf-mutator CONFIG REQUIRED)
find_package(LLVM REQUIRED CONFIG)
find_package(prometheus-cpp CONFIG REQUIRED)

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# ---------------------------------------------------------------------------
# Protobuf generation
# ---------------------------------------------------------------------------
set(PROTO_SCHEMA_DIR ${CMAKE_SOURCE_DIR}/schema)
protobuf_generate_cpp(RAW_PROTO_SRCS RAW_PROTO_HDRS
  ${PROTO_SCHEMA_DIR}/elaborate.proto
)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

# ---------------------------------------------------------------------------
# Nim fuzz harness (build shared lib that exports run_from_pb)
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
  COMMENT "🔹 Building Nim fuzz harness (libnetfuzz.so) that provides run_from_pb"
)
add_custom_target(nimlib ALL DEPENDS ${NIM_LIB_PATH})

# Import the Nim .so so CMake can link against it
add_library(libnetfuzz SHARED IMPORTED GLOBAL)
set_target_properties(libnetfuzz PROPERTIES IMPORTED_LOCATION ${NIM_LIB_PATH})
add_dependencies(libnetfuzz nimlib)

# Optionally set RPATH so the exe finds the .so next to it
set(CMAKE_BUILD_RPATH "$ORIGIN")
set(CMAKE_INSTALL_RPATH "$ORIGIN")

# ---------------------------------------------------------------------------
# Fuzz target (pure C++ metrics + coverage + calls into Nim)
# ---------------------------------------------------------------------------
add_executable(lpm-consumer-fuzz
  mutator/test.cpp
  mutator/coverage.cpp
  ${RAW_PROTO_SRCS}
  ${RAW_PROTO_HDRS}
)

target_include_directories(lpm-consumer-fuzz PRIVATE
  ${CMAKE_SOURCE_DIR}/mutator
  ${CMAKE_SOURCE_DIR}/harness
)

target_link_libraries(lpm-consumer-fuzz PRIVATE
  protobuf::libprotobuf
  libprotobuf-mutator::protobuf-mutator
  libprotobuf-mutator::protobuf-mutator-libfuzzer
  prometheus-cpp::core
  prometheus-cpp::pull
  LLVMProfileData
  LLVMSupport
  libnetfuzz          # 👈 provides run_from_pb from Nim
  pthread
  dl
  unwind
)

# ---------------------------------------------------------------------------
# Clang coverage + sanitizers
# ---------------------------------------------------------------------------
if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  message(STATUS "🔧 Configuring Clang sanitizer + coverage for libFuzzer build")

  target_compile_options(lpm-consumer-fuzz PRIVATE
    -fsanitize=fuzzer-no-link,address,undefined
    -fno-omit-frame-pointer
    -fprofile-instr-generate
    -fcoverage-mapping
    -g
    -O2
  )

  target_link_options(lpm-consumer-fuzz PRIVATE
    -fsanitize=fuzzer,address,undefined
    -fprofile-instr-generate
    -fcoverage-mapping
  )

  # Detect + link the LLVM profile runtime (works on Nix/LLVM 21+)
  execute_process(
    COMMAND ${CMAKE_CXX_COMPILER} -print-resource-dir
    OUTPUT_VARIABLE CLANG_RESOURCE_DIR
    OUTPUT_STRIP_TRAILING_WHITESPACE
  )
  set(CLANG_RT_DIR "${CLANG_RESOURCE_DIR}/lib/linux")
  set(_arch "${CMAKE_SYSTEM_PROCESSOR}")
  execute_process(
    COMMAND ${CMAKE_CXX_COMPILER} -print-file-name=libclang_rt.profile-${_arch}.a
    OUTPUT_VARIABLE CLANG_RT_PROFILE_ABS
    OUTPUT_STRIP_TRAILING_WHITESPACE
  )
  if (EXISTS "${CLANG_RT_PROFILE_ABS}")
    set(CLANG_RT_PROFILE "${CLANG_RT_PROFILE_ABS}")
  else()
    find_library(CLANG_RT_PROFILE
      NAMES clang_rt.profile-${_arch} clang_rt.profile
      HINTS "${CLANG_RT_DIR}"
    )
  endif()
  if (CLANG_RT_PROFILE)
    message(STATUS "✅ Using LLVM profile runtime: ${CLANG_RT_PROFILE}")
    target_link_libraries(lpm-consumer-fuzz PRIVATE "${CLANG_RT_PROFILE}")
  else()
    message(STATUS "ℹ️ No explicit profile runtime linked; relying on Clang auto-link.")
  endif()
endif()

# ---------------------------------------------------------------------------
# Install
# ---------------------------------------------------------------------------
install(TARGETS lpm-consumer-fuzz DESTINATION bin)
