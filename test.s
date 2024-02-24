.intel syntax noprefix
.section .data
value1: .quad 0x2
value2: .quad 0x9

    .section .text
    .global _start
_start:
    sub rax ,  QWORD PTR [value1]
    cmp rax, 0
    jg B
A: 
    add rax , QWORD PTR [value1]
B:
    add rax , QWORD PTR [value2]
C:
    int3
