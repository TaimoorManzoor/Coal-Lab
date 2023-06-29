.data 
BasicStatment: .asciiz "Given two number number and find which one is greater or lessor\n"
Number1:       .asciiz "Give First Number  : "
Number2:       .asciiz "Give Second Number : " 
Statement:     .asciiz "Press 1 for Checking which 1 is greater otherwise Press 2 for Checking which one is lessor\n"
Number1Greater:.asciiz "First Input Is Greater\n"
Number2Greater:.asciiz "Second Input Is Greater\n"
Number1Lessor:.asciiz "First Input Is Lessor\n"
Number2Lessor:.asciiz "Second Input Is Lessor\n"
Default	    : .asciiz "INCOREECT CHOICE"
.text 
	.globl main
	       main:
	       
	       #BASIC STATEMENT OF THE TASK
	       li $v0,4
	       la $a0,BasicStatment
	       syscall
	       #TAKE FIRST INPUT FROM USER
	       li $v0,4
	       la $a0,Number1
	       syscall
	       
	       li $v0,5
	       syscall
	       move $t0,$v0
	       
	       #TAKE SECOND INPUT FROM USER
	       li $v0,4
	       la $a0,Number2
	       syscall
	       
	       li $v0,5
	       syscall
	       move $t1,$v0
	       
	       #CHOSE WHICH TYPE OF OPERATION DO YOU WANT?
	       li $v0,4
	       la $a0,Statement
	       syscall
	       
	          
	       li $v0,5
	       syscall
	       move $t2,$v0
	       
	       # CASES
	       beq $t2,1,case1
	       beq $t2,2,case2
	       j case3 
	       
	       # CASE 1
	       case1:
	       bgt $t0,$t1 GreaterNumber1
	       bgt $t1,$t0 GreaterNumber2
	       b end
	       # CASE 2	       
	       case2:
	       bgt $t1,$t0 NumberLessor1
	       bgt $t0,$t1 NumberLessor2
	       b end
	       # CASE 3	       
	       case3:
	       li $v0,4			#command for printing a string
	       la $a0,Default		#loading the string into the argument to enable printing
	       syscall			#executing the command
	       b end
	       
	       #IT IS RUN WHEN FIRST INPUT IS GREATER
	       GreaterNumber1:
	       li $v0,4			#command for printing a string
	       la $a0,Number1Greater	#loading the string into the argument to enable printing
	       syscall			#executing the command
	       b end
	       #IT IS RUN WHEN SECOND INPUT IS GREATER
	       GreaterNumber2:
	       li $v0,4			#command for printing a string
	       la $a0,Number2Greater	#loading the string into the argument to enable printing
	       syscall			#executing the command
	       b end
	       
	       #IT IS RUN WHEN FIRST INPUT IS LESSOR
	       NumberLessor1:
	       li $v0,4			#command for printing a string
	       la $a0,Number1Lessor	#loading the string into the argument to enable printing
	       syscall			#executing the command
	       b end
	       #IT IS RUN WHEN SECOND INPUT IS LESSOR
	       NumberLessor2:
	       li $v0,4			#command for printing a string
	       la $a0,Number2Lessor	#loading the string into the argument to enable printing
	       syscall			#executing the command
	       b end
	       
	       end:	
	       li $v0,10		#This is to terminate the program
	       syscall	 
	       
	       
	        
	         