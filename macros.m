.macro print_space
    li      a0 '\n'
    li      a7 11
    ecall
.end_macro

.macro print_string %str
	la a0 %str
	li a7 4
	ecall
.end_macro

# strncpy(str1, str2) - copy str2 to str1
.macro strncpy %str1 %str2
    la a1 %str1
    la a0 %str2
    jal strncpy
.end_macro
