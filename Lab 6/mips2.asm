# 2. Write a program in MIPS that keep asking for a number until you enter a negative number.
.data 

input: .asciiz "Let's ENter the Number\n" 
Positive: .asciiz "You Enter the Positive number\n"
Negative: .asciiz "You Enter the Negative number\n"
breaks: .asciiz "\n"
gap: .asciiz " : "
.text
.globl main
main:

# PRINT INPUT
li $v0,4
la $a0,input
syscall

# TAKE INPUT FROM USER
li $v0,5
syscall
move $t0,$v0

while:
blt $t0,0,exit
# TAKE INPUT FROM USER
li $v0,5
syscall
move $t0,$v0
# PRINT Positive
li $v0,4
la $a0,Positive
syscall
#LINE BREAK
li $v0,4
la $a0,breaks
syscall

j while

exit:
# PRINT NEGATIVE
li $v0,4
la $a0,Negative
syscall

li,$v0,10
syscall
