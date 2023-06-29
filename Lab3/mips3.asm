# Write a program in MIPS that will take input and check whether a number is divisible
# by 5 and 11 or not.

 .data
 	Message: .asciiz "check a number is divisible by 5 and 11 or not.\n"
 	Number:	 .asciiz "Enter the Integer Input\n"
 	Yes:.asciiz "it is divisible by  5 and 11  "
 	No:.asciiz "it is not divisible by  5 and 11" 
.text 
	.globl main
	 		main:
				#Printing the basic purpose of program
				li $v0,4	#command for printing a string
				la $a0,Message  #loading the string into the argument to enable printing
				syscall		#executing the command
				
				
				
				#Taking first number from user
				li $v0,4		#command for printing a string
				la $a0,Number		#loading the string into the argument to enable printing
				syscall			#executing the command
				
				li $v0,5		#command for reading an integer
				syscall			#executing the command for reading an integer
				move $t0, $v0 		#moving the number read from the user input into the temporary register $t0
				
				#Check conditon which number is greater
				
				div $t1,$t0,5
				mfhi $t2	#remainder
				mflo $t3	#numerator 
				
				beq $t2,0 check 
				b Notvalid
				
				check:
				div $t1,$t0 11
				mfhi $t2	#remainder
				beq $t2,0 checks 
				b end
				
				checks:
				li $v0,4		#command for printing a string
				la $a0,Yes		#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				Notvalid:
				li $v0,4		#command for printing a string
				la $a0,No		#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				
				
				
				end:
				
			       li $v0,10		#This is to terminate the program