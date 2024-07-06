#冒泡排序算法 RV32I 汇编程序
lw a0,0(x0) #a0,保存排序数量 n,待排序的数字个数 n 存在 0x00 处
addi a1,x0,1 #a1，保存常量 1
add a2,a0,x0 #a2，保存 i，初始值为 i=N
L1:
add a3,a1,x0 #a3，保存 j，初始值为 j=1
L2:
 slli a4,a3,2 # a4 保存 a[j]地址
lw a6,0(a4) #读取第 j 个元素
lw a7,4(a4) #读取第 j+1 个元素
bgeu a7,a6,L4 #a[j]>=a[j+1] 跳转
sw a7,0(a4) #交换存储
sw a6,4(a4) #交换存储
L4:
add a3,a3,a1 #j=j+1
bltu a3,a2,L2 # if j<i then 循环 读取两个元素比较
L3:
 sub a2,a2,a1 #i--
bne a2,a1,L1 #if i>1 then 循环 else 则结束
finish:
jal x0, finish