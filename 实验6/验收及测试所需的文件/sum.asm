main:
	lw a0,0(x0) # �����ݴ洢����ַ 0x0000 ��Ԫ�ж�ȡ���� n ���Ĵ��� a0��
	addi a2, x0,1 # ѭ������ i������� a2����ֵΪ 1 
	add a3,x0,x0 # �ۼƺʹ���� a3����ֵΪ 0
loop:
	add a3, a3, a2 # �� a3=a3+i
	beq a2, a0, finish # �� i=n��������ѭ��
	addi a2, a2, 1 # i++
	jal x0, loop # ��������ת�� loop ִ��
finish:
	sw a3, 8(x0) # ���ۼӽ�����浽���ݴ洢�� 0x0008 ��Ԫ
end:
	jal x0, end # ��������ת�� end
