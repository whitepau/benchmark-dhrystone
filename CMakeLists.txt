cmake_minimum_required(VERSION 3.5...3.28)
include(${CMAKE_CURRENT_SOURCE_DIR}/BaremetalProject.cmake)

#################
# Define project
#################

project(${APP_NAME})
add_compile_options(${USER_COMPILE_FLAGS})

add_executable(${EXE_FILENAME})
target_sources(${EXE_FILENAME}
    PRIVATE
        ${USER_COMPILE_SOURCES}
)
