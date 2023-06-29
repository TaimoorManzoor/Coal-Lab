# 5.  Write a program in MIPS that display the n terms of odd number.
.data
Statement : .asciiz "How many the Odd Number do you want to print\n"
line	  : .asciiz " "	
.text
.global main
main:
	 
# Print the Statement
li,$v0,4
la,$a0,Statement
syscall

# Taking Input From User
li,$v0,5
syscall
move $t0,$v0


li $t1,1
li $t2,1 
	  
for:
#CONDITION
bgt $t1,$t0,exit
#PRINT  ODD  NUMBER
li,$v0,1
move $a0,$t2
syscall
# PRINT SPACE
li,$v0,4
la,$a0,line
syscall
#INCREMNET
add $t2,$t2,2
add $t1,$t1,1
b for

exit:
li $v0,10
syscall
