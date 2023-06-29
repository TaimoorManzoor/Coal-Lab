# 4.  Write a program in MIPS that will take input from the user and display the cube of the number up to given an integer.
.data
Statement : .asciiz "Let's Find Out the Cube of Any number\n"
Factorial : .asciiz "The Cube is :"
LineSpace : .asciiz "\n"

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

#CONDITION VARIABLE
li $t1,0
li $t2,1
#Loop	  
for:
beq $t1,3 exit
#Basic Logic
mul $t2,$t2,$t0
# Increment OF COUNT
add $t1,$t1,1
b for
exit:

# Print the Cube Statement
li,$v0,4
la,$a0,Factorial
syscall

# The Cube of given number is 
li,$v0,1
move $a0,$t2
syscall

# End
li $v0,10
syscall
