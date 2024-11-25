.globl strncpy
strncpy:
	lb t1 (a0)
	sb t1 (a1)
	beqz t1 end
	addi a1 a1 1
	addi a0 a0 1
	b strncpy
end:
	ret
