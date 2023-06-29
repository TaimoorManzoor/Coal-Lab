# Write a program in MIPS that will keep asking for a number until you enter a negative number and 
# print the square of that number.

.data 

input: .asciiz "Let's ENter the Number\n"
inputs : .asciiz "\nEnter another number\n"  
square: .asciiz "square: \n"
cube: .asciiz "\ncube: \n"
breaks: .asciiz "\n"
gap: .asciiz " : "
.text
.globl main
main:

li $v0,4
la $a0,input
syscall

li $v0,5
syscall
move $t0,$v0
# mul for square
mul $t1,$t0,$t0
#statement
li $v0,4
la $a0,square
syscall

#print square
li $v0,1
move $a0,$t1
syscall
# mul for cube
mul $t2,$t0,$t1

#statement
li $v0,4
la $a0,cube
syscall

#print cube
li $v0,1
move $a0,$t2
syscall

while:
blt $t0,0,exit
#print the inputs
li $v0,4
la $a0,inputs
syscall
#take input
li $v0,5
syscall
move $t0,$v0

# mul for square
mul $t1,$t0,$t0
# mul for cube
mul $t2,$t0,$t1

#statement
li $v0,4
la $a0,square
syscall

#print square
li $v0,1
move $a0,$t1
syscall

#statement
li $v0,4
la $a0,cube
syscall

#print cube
li $v0,1
move $a0,$t2
syscall

j while

exit:

li,$v0,10
syscall

