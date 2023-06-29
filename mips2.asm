# Write a program in MIPS that display odd number from the array.
.data
array: .space 20
in: .asciiz "Array element; "
odd: .asciiz "Odd : : "
n: .asciiz "\n"

.text
.globl main
main:
#LOAD ADDRESS
la $t0,array		
move $t1,$t0		
#LOAD REGISTER
li $t2,0
li $t3,0

#LOOP

for:
bgt $t2,4,for1

li $v0,4
la $a0,in
syscall

li $v0,5
syscall
# STORE WORD
sw $v0,($t0)		

add $t0,$t0,4		
add $t2,$t2,1		

j for

for1:
bgt $t3,4,Exit
#lw load word.
lw $t4,($t1)		
#ODD CONITION
div $t5,$t4,2
mfhi $t6
#INCREMENT
add $t1,$t1,4
add $t3,$t3,1
#CONDITION
beqz $t6,for1
# PRINT N
li $v0,4
la $a0,n
syscall
#print the odd statment
li $v0,4
la $a0,odd
syscall

#print the answer		
li $v0,1		
move $a0,$t4
syscall


#CALL
j for1

Exit:


#END
li $v0,10
syscall