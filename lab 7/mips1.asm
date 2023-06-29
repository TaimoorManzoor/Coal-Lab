# 1. Write a program in MIPS that will take input and print table of that number.
.data
msg1: .asciiz "Welcome to Table Generator App\n"
msg2: .asciiz "Please enter the number: "
msg3: .asciiz " x "
msg4: .asciiz " = "
msg5: .asciiz "\n"

.text
.globl main
main:

li $v0, 4		#Welcoming user block
la $a0, msg1
syscall

li $v0, 4		#Asking for the Value
la $a0, msg2
syscall

li $v0, 5		#Taking Value from user
syscall
move $t0, $v0


li $t1, 1		#incremental number

do:

# mulplication with increment
mul $t2, $t1,$t0
	
li $v0, 1		#Taking Value from user
move $a0, $t0
syscall

#print x
li $v0, 4		#Asking for the Value
la $a0, msg3
syscall

#print count
li $v0, 1		#Taking Value from user
move $a0, $t1
syscall

# print =
li $v0, 4		#Asking for the Value
la $a0, msg4
syscall
#print table
li $v0, 1		
move $a0, $t2
syscall
# increment
add $t1, $t1, 1

li $v0, 4		#Printing output message
la $a0, msg5
syscall

while:
beq $t1, 11, end	#loop check
j do

end:			#End Block
li $v0, 10		#Exit Command
syscall