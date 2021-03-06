
# This file is a part of SimpleXX/SimpleKernel (https://github.com/SimpleXX/SimpleKernel).
# 
# platform_detector.cmake for SimpleXX/SimpleKernel.

if (PLATFORM STREQUAL physical)
    set(SimpleKernelPlatform physical)
    set(SimpleKernelPlatformMacro PHY)
elseif (PLATFORM STREQUAL bochs)
    set(SimpleKernelPlatform bochs)
    set(SimpleKernelPlatformMacro BOCHS)
elseif (PLATFORM STREQUAL qemu)
    set(SimpleKernelPlatform qemu)
    set(SimpleKernelPlatformMacro QEMU)
else ()
    message(WARNING "Unexpected PLATFORM ${PLATFORM}, using default value \"bochs\"")
    set(PLATFORM bochs)
    set(SimpleKernelPlatform bochs)
    set(SimpleKernelPlatformMacro BOCHS)
endif ()

message(STATUS "SimpleKernelPlatform is ${SimpleKernelPlatform}")
