#3. Write a program in MIPS that keep asking for a number until you enter a negative number. At the
#end, print the sum of all entered numbers. Divide the total by no of input entered.

input: .asciiz "Let's ENter the Number\n"
inputs : .asciiz "Enter another number\n"  
sum: .asciiz "sum: "
divs: .asciiz "\ndivision is:"
breaks: .asciiz "\n"
gap: .asciiz " : "
.text
.globl main
main:

# print input
li $v0,4
la $a0,input
syscall

#take input from user
li $v0,5
syscall
move $t0,$v0

#sum
li $t1,0

#count
li $t2,1

# added operation
add $t1,$t1,$t0

# while loop
while:
#condition
blt $t0,0,exit
# print inputs
li $v0,4
la $a0,inputs
syscall

# 
li $v0,5
syscall
move $t0,$v0

#sum doing
add $t1,$t1,$t0
add $t2,$t2,1
move $t5,$t1
j while

exit:

# print sum 
li $v0,4
la $a0,sum
syscall

#  sum
li $v0,1
move $a0,$t5
syscall

# div 
div $t3,$t5,$t2

#DIV STATEMENT
li $v0,4
la $a0,divs
syscall

# DIV RESULT
li $v0,1
move $a0,$t3
syscall

li,$v0,10
syscall




