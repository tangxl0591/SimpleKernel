
# This file is a part of SimpleXX/SimpleKernel (https://github.com/SimpleXX/SimpleKernel).
#
# CMakeLists.txt for SimpleXX/SimpleKernel.

PROJECT(gdt C ASM)

aux_source_directory(${gdt_SOURCE_DIR}/. gdt_c_src)
find_asm_source_files(ASM_SOURCE_FILES ${gdt_SOURCE_DIR})

set(gdt_src ${gdt_c_src} ${ASM_SOURCE_FILES})

add_library(${PROJECT_NAME} OBJECT ${gdt_src})

target_include_ds_alg_header_files(${PROJECT_NAME})
target_include_libc_header_files(${PROJECT_NAME})
target_include_common_header_files(${PROJECT_NAME})
target_include_drv_header_files(${PROJECT_NAME})
target_include_arch_header_files(${PROJECT_NAME})
