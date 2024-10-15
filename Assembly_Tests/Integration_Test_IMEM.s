lui x5,0x00010
lui x4,0x00010
addi x5,x5,2
add x3,x4,x5
sub x5,x0,x5
B1:
beq x4,x4,B2
addi x2,x2,2
B2:
sub x5,x5,x2
bne x5,x2,B3
and x2,x3,x2
sltiu x6,x9,-2
B3:
andi x4,x2,0x0ff
bge x4,x5,B4
ori x3,x4,0x020
B4:
slti x4,x6,-2
xori x5,x4,-1
add x3,x5,x0
ori x9,x9,0x001
sll x2,x9,x3
and x2,x2,x0
lui x2,0x80000
srli x3,x2,11
lui x10,0x04abc
ori x10,x10,0x123
sw x10,16(x2)			
lw x11,16(x2)			
sb x11,20(x3)			
sh x11,20(x2)			
sw x11,20(x3)
lw x19,20(x2)
lhu x24,20(x2)
lbu x31,20(x2)
slli x31, x31, 2
srl x31, x31, x9
lh x21, 20(x2)
lb x27, 20(x2)
sra x22, x21, x9
or x22, x22, x9
slt x1, x19, x21
sltu x2, x21, x27
sub x9, x0, x9
andi x9, x9, 0x00f
srai x9, x9, 1
lw x11, 16(x3)			
sw x11, 20(x3)			
auipc x1, 0x000f4
andi x9,x9,0x000
addi x9,x9,1
addi x14,x14,1
addi x12,x12,1
beq x12,x14,HALT
xor x5,x4,x5
FENCE
HALT:
HALT
jalr x9,x1,0

 
