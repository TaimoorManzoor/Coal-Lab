# 3. Write a program in MIPS that display print even number from the array.

.data
array: .space 20
in: .asciiz "elements; "
even: .asciiz "Even is: "
n: .asciiz "\n"

.text
.globl main
main:
# load address array
la $t0,array		
move $t1,$t0		

li $t2,0
li $t3,0



for:
bgt $t2,4,for1
#print in
li $v0,4
la $a0,in
syscall

li $v0,5
syscall
#store word
sw $v0,($t0)		
#increment
add $t0,$t0,4		
add $t2,$t2,1		

j for

for1:
#condition
bgt $t3,4,Exit
#load word
lw $t4,($t1)		
#even condition
div $t5,$t4,2
mfhi $t6
#increment
add $t1,$t1,4
add $t3,$t3,1

bnez $t6,for1
# space
li $v0,4
la $a0,n
syscall
#print even
li $v0,4
la $a0,even
syscall
#print answer		
li $v0,1		
move $a0,$t4
syscall



j for1

Exit:
li $v0,10
syscall