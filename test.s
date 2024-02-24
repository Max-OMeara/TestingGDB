.section .data
value1: .quad 0x2
value2: .quad 0x9

.section .text
.globl _start
_start:
    subq $value1, %rax
    cmpq $0, %rax
    jg B
A:
    addq $value1, %rax
B:
    addq $value2, %rax
C:
    int3
