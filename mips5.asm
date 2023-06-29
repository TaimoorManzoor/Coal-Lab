# 5.Write a program in MIPS that will take input and store in an array and find smallest element from array.
.data
array: .space 20
in: .asciiz "Array elements: "
mins: .asciiz "\nMin is: "
n: .asciiz "\n"

.text
.globl main
main:
#load array address
la $t0,array		
move $t1,$t0		
#load register
li $t2,0
li $t3,0



for:
bgt $t2,4,min
#space
li $v0,4
la $a0,in
syscall

li $v0,5
syscall
#store word
sw $v0,($t0)		

add $t0,$t0,4		
add $t2,$t2,1		

j for

min:
lw $t9,($t1)		
j for1

for1:

bgt $t3,4,Exit
#load array
lw $t4,($t1)		
#increment
add $t1,$t1,4
add $t3,$t3,1

ble $t4,$t9,swap	

j for1

swap:
move $t9,$t4		
j for1


Exit:

#print min
li $v0,4
la $a0,mins
syscall
#print answer
li $v0,1
move $a0,$t9
syscall

li $v0,10
syscall