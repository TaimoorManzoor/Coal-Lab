#Write a program in MIPS that will take input from the user and generate multiplication table.
.data
Table : .asciiz "Let's Find Out Table of Any number\n"
m     : .asciiz " x "
e     : .asciiz " = "
LineSpace :.asciiz "\n"

.text
.global main
main:
	 
# Print the Statement
li,$v0,4
la,$a0,Table
syscall

# Taking Input From User
li,$v0,5
syscall
move $t0,$v0

#CONDITION
li $t1,11

#Count
li $t2,1

#Loop	  
for:
beq $t2,$t1 exit

li,$v0,1
move $a0,$t0
syscall

# X 
li,$v0,4
la,$a0,m
syscall

# PRINT OF COUNT
li,$v0,1
move $a0,$t2
syscall

# =
li,$v0,4
la,$a0,e
syscall
# MULTIPLY
mul $t3,$t2,$t0

# PRINT TABLE
li,$v0,1
move $a0,$t3
syscall

#iNCREMENT OF COUNT
add $t2,$t2,1

#Line Space
li,$v0,4
la,$a0,LineSpace
syscall

b for

exit:
li $v0,10
syscall
