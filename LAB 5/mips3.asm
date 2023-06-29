# 3. Write a program in MIPS that will take input from the user and calculate the factorial of a number.
.data
Statement : .asciiz "Let's Find Out Factorial of Any number\n"
Factorial : .asciiz "The Factorial is :"
LineSpace :.asciiz "\n"

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
li $t1,1
li $t3,1

#Loop	  
for:
beq $t0,$t1 exit

# MULTIPLY
mul $t3,$t3,$t0

# DECREMENT OF COUNT
sub $t0,$t0,1

b for

exit:

# Print the Factorial
li,$v0,4
la,$a0,Factorial
syscall

# The Factorial Number is 
li,$v0,1
move $a0,$t3
syscall

# End
li $v0,10
syscall
