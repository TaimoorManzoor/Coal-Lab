#5. Write a program in MIPS that generate menu option to calculate total and average of 5 courses.

.data
			#Statement
BasicStatement		: .asciiz "Let's Find the either Average or Sum of Courses\n" 
Course1	      		:.asciiz "Enter the Marks of Course1:"
Course2	      		:.asciiz "Enter the Marks of Course2:"
Course3	      		:.asciiz "Enter the Marks of Course3:"
Course4	      		:.asciiz "Enter the Marks of Course4:"
Course5	      		:.asciiz "Enter the Marks of Course5:" 
Sum      		:.asciiz "The Total Sum is : "
Average      		:.asciiz "The Average is : "
Default      		:.asciiz "Incorrect Option "
SwitchCase 		:.asciiz "Press 1 for Sum\nPress 2 for Average\n"

.text
	.globl main
	 main:
	 #Basic Statement
	 li $v0,4
	 la $a0,BasicStatement
	 syscall
	 

	 
	 #Take First Input
	 li $v0,4
	 la $a0,Course1
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t1,$v0
	 
	 #Take Second Input
	 li $v0,4
	 la $a0,Course2
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t2,$v0
	  
	 #Take Third Input
	 li $v0,4
	 la $a0,Course3
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t3,$v0 
	 
	 #Take Fourth input
	 li $v0,4
	 la $a0,Course4
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t4,$v0
	 
	 #take Fifth input
	 li $v0,4
	 la $a0,Course5
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t5,$v0
	 
	  #SWITCH CASE STATEMENT
	 li $v0,4
	 la $a0,SwitchCase
	 syscall
	 
	 #Selection of Case
	 li $v0,5
	 syscall
	 move $t3,$v0 
	 
	 #Cases
	 beq $t3,1 case1
	 beq $t3,2 case2
	 b case3

	 #CASE 1
	 case1:
		add $t0,$t1,$t2
		add $t0,$t0,$t3
		add $t0,$t0,$t4
		add $t0,$t0,$t5
	 
	 	li $v0,4
	 	la $a0,Sum
	 	syscall
	 
	 	li $v0,1
	 	move $a0,$t0
	 	syscall
	 		
	 	b end
	 #CASE 2
	 case2:
		add $t0,$t1,$t2
		add $t0,$t0,$t3
		add $t0,$t0,$t4
		add $t0,$t0,$t5
		div $t6,$t0,5
		
	 	li $v0,4
	 	la $a0,Average
	 	syscall
	 
	 	li $v0,1
	 	move $a0,$t6
	 	syscall
	 
	 	b end
	 
	 	#CASE 3
	 	case3: 
	 	li $v0,4
	 	la $a0,Default
	 	syscall
	 
	 	b end
	
		 end:
	 
		li, $v0,10
	 	syscall