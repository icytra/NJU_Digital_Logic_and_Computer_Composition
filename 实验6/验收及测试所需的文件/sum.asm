main:
	lw a0,0(x0) # 从数据存储器地址 0x0000 单元中读取参数 n 到寄存器 a0；
	addi a2, x0,1 # 循环变量 i，存放在 a2，初值为 1 
	add a3,x0,x0 # 累计和存放在 a3，初值为 0
loop:
	add a3, a3, a2 # 将 a3=a3+i
	beq a2, a0, finish # 若 i=n，则跳出循环
	addi a2, a2, 1 # i++
	jal x0, loop # 无条件跳转到 loop 执行
finish:
	sw a3, 8(x0) # 将累加结果保存到数据存储器 0x0008 单元
end:
	jal x0, end # 无条件跳转到 end
