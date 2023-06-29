#4.Write a program in MIPS that will take input and store in an array and find the largest element from array.
.data
array: .space 20
in: .asciiz "Elements :  "
max: .asciiz "\nMAX is: "
n: .asciiz "\n"

.text
.globl main
main:
# load address
la $t0,array		
move $t1,$t0		
#print register
li $t2,0
li $t3,0
# load word of array
lw $t9,($t1)		



for:
bgt $t2,4,for1
# print in
li $v0,4
la $a0,in
syscall

li $v0,5
syscall
#store word of array
sw $v0,($t0)		
#increment
add $t0,$t0,4		
add $t2,$t2,1		

j for
#loop
for1:
bgt $t3,4,Exit
#load word array
lw $t4,($t1)		

#swap and contition
bgt $t4,$t9,swap	
#increment
add $t1,$t1,4
add $t3,$t3,1

j for1
#swap
swap:
move $t9,$t4		
j for1


Exit:

# print max statement
li $v0,4
la $a0,max
syscall

# print the answer
li $v0,1
move $a0,$t9
syscall
#end
li $v0,10
syscall
