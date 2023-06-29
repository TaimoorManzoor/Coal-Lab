 # Write a program in MIPS that will take input and check whether a year is leap year or not
  .data
 	Message: .asciiz " check whether a year is leap year or not\n"
 	Year:	 .asciiz "Enter the Year Input\n"
 	leap:.asciiz "it is leap Year"
 	Nleap:.asciiz "it is not leap Year"
.text 
	.globl main
	 	  	main:
				#Printing the basic purpose of program
				li $v0,4	#command for printing a string
				la $a0,Message  #loading the string into the argument to enable printing
				syscall		#executing the command
				
				#Taking  number from user
				li $v0,4		#command for printing a string
				la $a0,Year		#loading the string into the argument to enable printing
				syscall			#executing the command
				
				li $v0,5		#command for reading an integer
				syscall			#executing the command for reading an integer
				move $t0, $v0 		#moving the number read from the user input into the temporary register $t0
				
				div $t1,$t0,400
				mfhi $t2	#remainder
				div $t3,$t0,100
				mfhi $t4	#remainder
				div $t5,$t0,4
				mfhi $t6	#remainder
				
				beq $t2,0 Leap
				beq $t4,0 NotLeap
				beq $t6,0 Leap
				b NotLeap
				
				Leap:
				li $v0,4		#command for printing a string
				la $a0,leap		#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				NotLeap:
				li $v0,4		#command for printing a string
				la $a0,Nleap		#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				end:
				

			        li $v0,10		#This is to terminate the program
				 