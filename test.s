.section .data
value1: .quad 0x2
value2: .quad 0x9

.section .text
.global _start
_start:
    mov rax, QWORD PTR [value1]    # Load value1 into rax
    sub rax, QWORD PTR [value2]    # Subtract value2 from rax
    cmp rax, 0                      # Compare rax with 0
    jg B                            # Jump to B if greater than 0
A:
    add rax, QWORD PTR [value1]    # Add value1 to rax
B:
    add rax, QWORD PTR [value2]    # Add value2 to rax
C:
    int3                            # Breakpoint
