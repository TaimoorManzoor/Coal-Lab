
# Write a program in MIPS that will take input and find the maximum between two number 
.data
	Message: .asciiz "Find the Maximum Number Between Two Number \n"
	Number1: .asciiz "Enter the First Number:  "
	Number2: .asciiz "Enter the Second Number:  "
	Statement1: .asciiz "First Numnber is greater"
	Statement2: .asciiz "Second Numnber is greater"
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
    
				
				#Taking second  number from user
				li $v0,4		#command for printing a string
				la $a0, Number2		#loading the string into the argument to enable printing
				syscall			#executing the command
				
				li $v0,5		#command for reading an integer
				syscall		        #executing the command for reading an integer
				move $t1, $v0		#moving the number read from the user input into the temporary register $t1
				
				#Check conditon which number is greater
				bgt $t0,$t1,greater 
				b lessor
				
				#it is execute when First input is greater 
				greater:
				li $v0,4		#command for printing a string
				la $a0,Statement1	#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				#it is execute when Second input is greater 
				lessor:
				li $v0,4 		#command for printing a string
				la $a0,Statement2	#loading the string into the argument to enable printing
				syscall			#executing the command
				b end
				
				end:
				
			       li $v0,10		#This is to terminate the program
			       syscall	     
				
	 			