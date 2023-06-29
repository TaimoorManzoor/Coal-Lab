# 5. Write a program in MIPS that will keep asking for a number until you enter a negative number # and find sum of first and last digit of a inputted number.
.data 
input: .asciiz "Let's ENter the Number\n"
inputs : .asciiz "\nEnter another number\n"  
sum: .asciiz "The sum is : "
breaks: .asciiz "\n"
gaps: .asciiz "  "

.text
.globl main
main:

li $v0,4
la $a0,input
syscall

li $v0,5
syscall
move $t0,$v0

move $t5,$t0

do:

move $t7,$t0
#print the inputs
li $v0,4
la $a0,inputs
syscall

#take input
li $v0,5
syscall
move $t0,$v0

while:
blt $t0,0,exit
j do

exit:
add $t3,$t5,$t7

#print the statement
li $v0,4
la $a0,sum
syscall

#print the sum
li $v0,1
move $a0,$t3
syscall

li,$v0,10
syscall

