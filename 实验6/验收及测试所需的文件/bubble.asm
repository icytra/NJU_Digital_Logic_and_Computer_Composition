#ð�������㷨 RV32I ������
lw a0,0(x0) #a0,������������ n,����������ָ��� n ���� 0x00 ��
addi a1,x0,1 #a1�����泣�� 1
add a2,a0,x0 #a2������ i����ʼֵΪ i=N
L1:
add a3,a1,x0 #a3������ j����ʼֵΪ j=1
L2:
 slli a4,a3,2 # a4 ���� a[j]��ַ
lw a6,0(a4) #��ȡ�� j ��Ԫ��
lw a7,4(a4) #��ȡ�� j+1 ��Ԫ��
bgeu a7,a6,L4 #a[j]>=a[j+1] ��ת
sw a7,0(a4) #�����洢
sw a6,4(a4) #�����洢
L4:
add a3,a3,a1 #j=j+1
bltu a3,a2,L2 # if j<i then ѭ�� ��ȡ����Ԫ�رȽ�
L3:
 sub a2,a2,a1 #i--
bne a2,a1,L1 #if i>1 then ѭ�� else �����
finish:
jal x0, finish