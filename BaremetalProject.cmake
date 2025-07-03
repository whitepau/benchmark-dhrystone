# Define metadata for a baremetal application. These metadata are used in the
# application CMakeLists.txt, as well as a top-level CMakeLists.txt that
# combines the application with ATF and packages into a JIC file.

set(APP_NAME dhrystone)
set(EXE_FILENAME ${APP_NAME}.elf)
set(APPLICATION_BIN ${PROJECT_BINARY_DIR}/${APP_NAME}.bin)

# Add any directories below, they will be added as extra include directories.
# Example 1: Adding /proj/data/include will pass -I/proj/data/include.
# Example 2: Adding ../../common/include will consider the path as relative to this component directory.
# Example 3: Adding ${CMAKE_SOURCE_DIR}/data/include to add data/include from this project.

set(
    USER_INCLUDE_DIRECTORIES
)

set(
    USER_COMPILE_SOURCES
    "dhry_1.c"
    "dhry_2.c"
)

set (
    USER_COMPILE_FLAGS
    "-O3;-DNOENUM;-DHZ=60;-DMSC_CLOCK=1;"
)

