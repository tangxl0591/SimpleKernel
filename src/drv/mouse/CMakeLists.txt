
# This file is a part of Simple-XX/SimpleKernel (https://github.com/Simple-XX/SimpleKernel).
#
# CMakeLists.txt for Simple-XX/SimpleKernel.

PROJECT(mouse C ASM)

aux_source_directory(${mouse_SOURCE_DIR}/. mouse_src)
add_library(${PROJECT_NAME} OBJECT ${mouse_src})

target_include_libc_header_files(${PROJECT_NAME})
target_include_drv_header_files(${PROJECT_NAME})
target_include_arch_header_files(${PROJECT_NAME})