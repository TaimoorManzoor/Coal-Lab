#4. Write a program in MIPS that will take input and calculate the area of shapes using Switch.

.data
			#STATEMENT
BasicStatement		: .asciiz "Let's Find the different Area of Shape\n" 
Number1	      		:.asciiz "Enter the Lenght:" 
Number2	      		:.asciiz "Enter the Width: "
Area      		:.asciiz "The Shape Area is : "
Default      		:.asciiz "Incorrect Option "
SwitchCase 		:.asciiz "Press 1 for Rectangle Area\nPress 2 for Square Area\n"
Result			:.asciiz "The Area is : "
 
.text
	.globl main
	 main:
	 #Basic Statement
	 li $v0,4
	 la $a0,BasicStatement
	 syscall
	 
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
	 
	 #take first input
	 li $v0,4
	 la $a0,Number1
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t0,$v0
	  
	 #take Second input
	 li $v0,4
	 la $a0,Number2
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t1,$v0 

	 #CASE 1
	 case1:
	 #take Length input
	 li $v0,4
	 la $a0,Number1
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t0,$v0
	 
 	 #take Second input
	 li $v0,4
	 la $a0,Number2
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t1,$v0
	  
	 mul $t4,$t0,$t1
	 
	 li $v0,4
	 la $a0,Result
	 syscall
	 
	 li $v0,1
	 move $a0,$t4
	 syscall
	 
	 b end
	 #CASE 2
	 case2:
	 #take Length input
	 li $v0,4
	 la $a0,Number1
	 syscall
	 
	 li $v0,5
	 syscall
	 move $t0,$v0
	  
	 mul $t4,$t0,$t0
	 
	 li $v0,4
	 la $a0,Result
	 syscall
	 
	 li $v0,1
	 move $a0,$t4
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
	 
	 
