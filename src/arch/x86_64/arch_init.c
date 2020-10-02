
// This file is a part of Simple-XX/SimpleKernel
// (https://github.com/Simple-XX/SimpleKernel).
//
// arch_init.c for Simple-XX/SimpleKernel.

#ifdef __cplusplus
extern "C" {
#endif

#include "cpu.hpp"
#include "intr/include/intr.h"
#include "gdt/include/gdt.h"
#include "arch_init.h"

void arch_init(void) {
    cpu_cli();
    // GDT 初始化
    gdt_init();
    // IDT 初始化
    intr_init();
    cpu_sti();
    return;
}

#ifdef __cplusplus
}
#endif
