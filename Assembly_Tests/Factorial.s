Main:
lui x3, 0x01000
lw x4, 16(x3)
addi x5, x0, 1
addi x6, x0, 1
Loop:
blt x5, x4, Body
jal x0, End
Body:
addi x7, x0, 0
addi x8, x6, 0
addi x9, x5, 0
Loop_Mul:
beq x9, x0, End_Mul
add x7, x7, x8
addi x9, x9, -1
jal x0, Loop_Mul
End_Mul:
add x6, x0, x7
addi x5, x5, 1
jal x0, Loop
End:
addi x10, x6, 0
sw x6, 20(x3)
HALT
