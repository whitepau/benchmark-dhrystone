cmake_minimum_required(VERSION 3.5...3.28)
include(${CMAKE_CURRENT_SOURCE_DIR}/BaremetalProject.cmake)

########################
# Add baremetal drivers
########################

# disable building tests
set(BUILD_TESTS OFF)

# library dir
get_filename_component(LIBRARY_DIR "../baremetal-drivers" ABSOLUTE)

# library project
add_subdirectory(${LIBRARY_DIR} alterametal)

# linker script
set(ALTERAMETAL_LINKER_SCRIPT "${LIBRARY_DIR}/build/aarch64/core0.ld")

#################
# Define project
#################

project(${APP_NAME})
add_compile_options(-DHZ=60 -DDHRY_ITERS=20000000)

add_executable(${EXE_FILENAME})
target_sources(${EXE_FILENAME}
    PRIVATE
        ${USER_COMPILE_SOURCES}
)

# link to the baremetal library
target_link_libraries(${EXE_FILENAME} PRIVATE
    alterametal
)

# specify linker script
target_link_options(${EXE_FILENAME} PRIVATE
    -T${ALTERAMETAL_LINKER_SCRIPT}
    --specs=nosys.specs -mstrict-align
)
