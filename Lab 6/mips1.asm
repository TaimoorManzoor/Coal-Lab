# 1. Write a program in MIPS that will take input of nth number print reverse number and their cube..
.data 

input: .asciiz "Let's Enter the Number\n"
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
#CONDITION
beq $t0,0,exit
# PRINT INTEGER
li $v0,1
move $a0,$t0
syscall
#BASIC OPERATION 
mul $t1,$t0,$t0
mul $t1,$t0,$t1
#PRINT GAP
li $v0,4
la $a0,gap
syscall

li $v0,1
move $a0,$t1
syscall

sub $t0,$t0,1
#PRINT BREAK
li $v0,4
la $a0,breaks
syscall

j while

exit:

li,$v0,10
syscall
