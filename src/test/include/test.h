
// This file is a part of Simple-XX/SimpleKernel
// (https://github.com/Simple-XX/SimpleKernel).
//
// test.h for Simple-XX/SimpleKernel.

#ifndef _TEST_H_
#define _TEST_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"
#include "stdbool.h"
#include "stdio.h"
#include "debug.h"
#include "mem/pmm.h"
#include "mem/vmm.h"
#include "../drv/clock/include/clock.h"
#include "../drv/keyboard/include/keyboard.h"

bool test(void);
bool test_pmm(void);
bool test_vmm(void);
bool test_libc(void);
<<<<<<< HEAD
=======
bool test_heap(void);
bool test_task(void);
>>>>>>> vmm_and_pmm

#ifdef __cplusplus
}
#endif

#endif /* _TEST_H_ */
