
# This file is a part of MRNIU/SimpleKernel (https://github.com/MRNIU/SimpleKernel).
#
# task_s.s for MRNIU/SimpleKernel.

str:
    .ascii "kthread_entry\n\0"

.global kthread_entry
.extern do_exit
.extern print_stack
kthread_entry:
    mov %edx, %eax
    # 参数压栈
    push %edx
    # 执行函数
    call *%ebx
    # 保存返回值
    push %eax

    push $str
    call printk_debug
    add $0x04, %esp

    call do_exit
