.include "macros.m"

.eqv BUFF_SIZE 15

.data
test1: .asciz "heheheheh"
test2: .asciz "fhfhfhfhfhfhfhffhfhfhfhfhfhhfhfhfhf"
test3:  .asciz ""
str1: .space BUFF_SIZE
str2: .space BUFF_SIZE

.text
main:
	jal get_string_to_copy
	# test1
    strncpy(str1, str2)    
    print_string(str1)
	print_space()    
    # test2
    strncpy(str1, test1)
    print_string(str1)
    print_space()
    # test3
    strncpy(str1, test2)
    print_string(str1)
    print_space()
    # test4
    strncpy(str1, test3)
    print_string(str1)
    li a7, 10
    ecall

get_string_to_copy:
    la      a0 str2
    li      a1 BUFF_SIZE
    li      a7 8
    ecall
    ret
