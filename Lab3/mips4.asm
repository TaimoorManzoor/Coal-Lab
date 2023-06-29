# Write a program in MIPS that will take input and check whether a number is even or odd.
 .data
 	Message: .asciiz " check whether a number is even or odd\n"
 	Number:	 .asciiz "Enter the Integer Input\n"
 	Even:.asciiz "it is Even"
 	Odd:.asciiz "it is odd" 
.text 
	.globl main
	 	  	main:
				#Printing the basic purpose of program
				li $v0,4	#command for printing a string
				la $a0,Message  #loading the string into the argument to enable printing
				syscall		#executing the command
				
				#Taking  number from user
				li $v0,4		#command for printing a string
				la $a0,Number		#loading the string into the argument to enable printing
				syscall			#executing the command
				
				li $v0,5		#command for reading an integer
				syscall			#executing the command for reading an integer
				move $t0, $v0 		#moving the number read from the user input into the temporary register $t0
				
				div $t1,$t0,2
				mfhi $t2	#remainder
				beq $t2,0 NumberEven
				b NumberOdd 
				
				NumberEven:
				li $v0,4		#command for printing a string
				la $a0,Even		#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				NumberOdd:
				li $v0,4		#command for printing a string
				la $a0,Odd		#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				end:
			        li $v0,10		#This is to terminate the program