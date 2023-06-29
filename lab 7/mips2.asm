.data
msg1: .asciiz "Welcome to Calculator, if you want to exit the loop please enter 0\n"
msg2: .asciiz "Please enter the number: "
msg3: .asciiz "You have entered 0. Loop ends\n"
msg4: .asciiz "Sum is: "

.text
.globl main
main:

li $v0, 4		#Welcoming user block
la $a0, msg1
syscall

li $t1, 0		#Sum
li $t2, 0		#Loading Value

do:
li $v0, 4		#Asking for the Value
la $a0, msg2
syscall

li $v0, 5		#Taking Value from user
syscall
move $t3, $v0

add $t1, $t1, $t3	#Adding user input

while:
beq $t3, $t2, end	#loop check
j do

end:			#End Block

li $v0, 4		#Printing output message
la $a0, msg3
syscall

li $v0, 4		#Printing output message
la $a0, msg4
syscall

li $v0, 1		#Printing answer
move $a0, $t1
syscall

li $v0, 10		#Exit Command
syscall
