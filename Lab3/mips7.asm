#Write a program in MIPS that will take input and find maximum between three numbers.
.data
	Message: .asciiz " Find maximum between three numbers\n"
	Number1: .asciiz "Enter the First Number:  "
	Number2: .asciiz "Enter the Second Number:  "
	Number3: .asciiz "Enter the Third Number:  "
	Statement1: .asciiz "First Numnber is greater"
	Statement2: .asciiz "Second Numnber is greater"
	Statement3: .asciiz "Third Numnber is greater"
.text
	.globl main
	 		main:
				#Printing the basic purpose of program
				li $v0,4	#command for printing a string
				la $a0,Message  #loading the string into the argument to enable printing
				syscall		#executing the command
				
				
				
				#Taking first number from user
				li $v0,4		#command for printing a string
				la $a0,Number1		#loading the string into the argument to enable printing
				syscall			#executing the command
				
				li $v0,5		#command for reading an integer
				syscall			 #executing the command for reading an integer
				move $t0, $v0 		#moving the number read from the user input into the temporary register $t0
				
				#Taking Second number from user
				li $v0,4		#command for printing a string
				la $a0,Number2		#loading the string into the argument to enable printing
				syscall			#executing the command
				
				li $v0,5		#command for reading an integer
				syscall			 #executing the command for reading an integer
				move $t1, $v0 		#moving the number read from the user input into the temporary register $t1
				
				#Taking Third number from user
				li $v0,4		#command for printing a string
				la $a0,Number3		#loading the string into the argument to enable printing
				syscall			#executing the command
				
				li $v0,5		#command for reading an integer
				syscall			 #executing the command for reading an integer
				move $t2, $v0 		#moving the number read from the user input into the temporary register $t2
				
				#	Condition
				bgt $t0,$t1 num1
				bgt $t2,$t1 num3
				bgt $t1,$t0 num2
				
				
				#	For Number 1
				num1:
				bgt $t0,$t2 num11 #condition 
				num11:
				li $v0,4 		#command for printing a string
				la $a0,Statement1	#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				#	For Number 2
				num2:
				bgt $t1,$t2 num22 #condition 
				num22:
				li $v0,4 		#command for printing a string
				la $a0,Statement2	#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				#	For Number 3
				num3:
				bgt $t2,$t0 num33 #condition 
				num33:
				li $v0,4 		#command for printing a string
				la $a0,Statement3	#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				end:
				
				
				li $v0,10		#This is to terminate the program
				syscall 
				