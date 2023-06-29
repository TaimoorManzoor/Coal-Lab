#2. Write a program in MIPS that will take input to check whether a number is even, odd,
#   positive, or negative using switch case.
.data
BasicStatement:.asciiz "Whether a number is even, odd,positive, or negative using switch case\n"
Number	      :.asciiz "Enter the Number: "
Even	      :.asciiz " is a Even Number"
Odd	      :.asciiz " is a Odd Number"
Positive      :.asciiz " is a Positive Number"
Negative      :.asciiz " is a Negative Number"
NotEven	      :.asciiz " is a Not Even Number"
NotOdd	      :.asciiz " is a Not Odd Number"
NotPositive   :.asciiz " is a Not Positive Number"
NotNegative   :.asciiz " is a Not Negative Number"
Choice	      :.asciiz "PRESS 1 FOR :Even\nPRESS 2 FOR :Odd\nPRESS 3 FOR :Positive\nPRESS 4 FOR :Negative\n"
Default	      :.asciiz "Incorrect Choice"
.text 
	.globl main
	 main:
	 
	 #BASIC STATEMENT FOR PROBLEM
	 li $v0,4
	 la $a0,BasicStatement
	 syscall
	 
	 #Take the Input from User
	 li $v0,4
	 la $a0,Number
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t0,$v0
	 
	 #Chose the Operation
	 li $v0,4
	 la $a0,Choice
	 syscall
	 
	 li $v0,5	#take interger input
	 syscall	#execute the system call 
	 move $t1,$v0	#assign $v0 value in $t1
	 
	 #CASES 
	 beq $t1,1 case1 #case 1
	 beq $t1,2 case2 #case 2
	 beq $t1,3 case3 #case 3
	 beq $t1,4 case4 #case 4
	 beq $t1,5 case5 #case 5(default case)
	 
	 #Case 1
	 case1:
	 	div $t4,$t0,2
	 	mfhi $t3 
	 	beq $t3,0 even
	 	b Noteven
	 	syscall 
	 	b end
	 #Case 2      
	 case2:
	 	div $t4,$t0,2
	 	mfhi $t3 
	 	beq $t3,1 odd
	 	b Notodd
	 	syscall 
	 	b end
	#Case-3      
	 case3:
	 	bgt $t0,0,positive
	 	b Notpositive
	        syscall         
	 	b end
        #Case-4      
	 case4:
	 	blt $t0,0,negative
	 	b Notnegative
	 	syscall 
	 	b end
	#case 5
	case5:
	 	li $v0,4
	        la $a0,Default
	        syscall         
	 	b end
	#EVEN  	
	 even:
	 	li $v0,1
		move $a0,$t0
		syscall	 
		
	        li $v0,4
	        la $a0,Even
	        syscall
	        b end
	 Noteven:
	 	li $v0,1
		move $a0,$t0
		syscall
		
		li $v0,4
	        la $a0,NotEven
	        syscall
	        b end
	#ODD
	odd:	
		li $v0,1
		move $a0,$t0
		syscall
		  
	        li $v0,4
	        la $a0,Odd
	        syscall
	        b end
	Notodd:
		li $v0,1
		move $a0,$t0
		syscall
		
		li $v0,4
	        la $a0,NotOdd
	        syscall         
	 	b end
	#POSITIVE
	positive:	 
	        li $v0,1
		move $a0,$t0
		syscall
	        
	        li $v0,4
	        la $a0,Positive
	        syscall
	        b end
	Notpositive:
		li $v0,1
		move $a0,$t0
		syscall
	
		li $v0,4
	        la $a0,NotPositive
	        syscall         
	 	b end
	#Negative   
	negative:
		li $v0,1
		move $a0,$t0
		syscall
			 
	        li $v0,4
	        la $a0,Negative
	        syscall
	        b end
	Notnegative:
		
		li $v0,1
		move $a0,$t0
		syscall
		
		li $v0,4
	        la $a0,NotNegative
	        syscall         
	 	b end
	 	
	 end:	
	 li $v0,10		#This is to terminate the program
	 syscall	 