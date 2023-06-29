
 # Write a program in MIPS that will take input and check whether a number is negative, positive or zero.
 
 .data
 	Message: .asciiz "Check the Behaviour of the Given Integer Input\n"
 	Number:	 .asciiz "Enter the Integer Input\n"
 	Positives:.asciiz "Given Input is Positive"
 	Negatives:.asciiz "Given Input is Negative" 
 	Zeros:.asciiz     "Given Input is Zero"  
 .text
 	#Basic Statement
 	li $t1,0
 	li $v0,4
 	la $a0,Message
 	syscall
 	
 	#Taking the Input from User
 	li $v0,4
 	la $a0,Number
 	syscall
 		
 	li $v0,5
 	syscall
 	move $t0,$v0 
 	
 	# Positive
 	 bgt $t0,$t1,Positive # 1st Condition t0>t1
 	 blt $t0,$t1,Negative # 2st Condition t0<t1
 	 beq $t0,$t1,Zero    # 3st Condition  t0==t1
 	 
 	 # Positive Function
 	 # bgt $t0,$t1,Positive
 	 Positive:
 	 li $v0,4
 	 la $a0,Positives
 	 syscall
 	 b end
 	 
 	 
 	 # Negative Function 
 	 # blt $t0,$t1,Negative
 	 Negative:
 	 li $v0,4
 	 la $a0,Negatives
 	 syscall
 	 b end
 	 
 	 
 	 # Zero  Function
 	 # beq $t0,$t1,Zero 
 	 Zero:
 	 li $v0,4
 	 la $a0,Zeros
 	 syscall
 	 b end
 	 
 	 end:
 	 li $v0,10 	#This is to terminate the program
 	 syscall  
 	 