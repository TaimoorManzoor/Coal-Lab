# 6) Write a program in MIPS that will take input and check whether the age of user is 
#    eligible for license or not.
.data
 	Message: .asciiz "Checking for  the  eligiblity for license\n"
 	Age:	 .asciiz "Enter your Age\n"
 	eligible:.asciiz "You are eligible"
 	noteligible:.asciiz "You are not eligible" 

 .text
 	.globl main
	 		main:
				#print basic statement
			 li $t1,18
 			 li $v0,4
 			 la $a0,Message
 			 syscall
 			 
 			 #Taking the Age from User
 			li $v0,4
 			la $a0,Age
 			syscall
 			#take input from user 
 			li $v0,5
 			syscall
 			move $t0,$v0
 			
 			 
 			#check
 			bgt $t0,$t1 ,Eligible
 			b NotEligible 
 			
			#1st Function
 			Eligible:
 			li $v0,4
 	 		la $a0,eligible
 	 		syscall
 	 		b end
 	 		#2nd Function
 	 		NotEligible:
 			li $v0,4
 	 		la $a0,noteligible
 	 		syscall
 	 		b end
 			end:
 			
 			 li $v0,10		#This is to terminate the program
			 syscall	     
 			
 			
 