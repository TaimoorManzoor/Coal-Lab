
# 3. Write a program in MIPS that will take input and create Simple Calculator using switch case.

.data
				#STATEMENT
BasicStatement		: .asciiz "This Is a Basic Calculator\n" 
Number1	      		:.asciiz "Enter the First Number : " 
Number2	      		:.asciiz "Enter the Second Number: "
Addition      		:.asciiz "The Addition Result is : "
Subtraction      	:.asciiz "The Subtraction Result is : "
Multiplication   	:.asciiz "The Multiplication Result is : "
Division      		:.asciiz "The Division Result is : "
Default      		:.asciiz "Incorrect Option "
SwitchCase 		:.asciiz "Press 1 for Addition\nPress 2 for Subtraction \nPress 3 for Multiplication\nPress 4 for Division\n"

 
.text
	.globl main
	 main:
	 #Basic Statement
	 li $v0,4
	 la $a0,BasicStatement
	 syscall
	 
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
	 beq $t3,3 case3
	 beq $t3,4 case4
	 b case5
	 #CASE 1
	 case1:
	 add $t4,$t0,$t1
	 
	 li $v0,4
	 la $a0,Addition
	 syscall
	 
	 li $v0,1
	 move $a0,$t4
	 syscall
	 
	 b end
	 #CASE 2
	 case2:
	 sub $t4,$t0,$t1
	 
	 li $v0,4
	 la $a0,Subtraction
	 syscall
	 
	 li $v0,1
	 move $a0,$t4
	 syscall
	 
	 b end
	 
	 #CASE 3
	 case3:
	 mul $t4,$t0,$t1
	 
	 li $v0,4
	 la $a0,Multiplication
	 syscall
	 
	 li $v0,1
	 move $a0,$t4
	 syscall
	 
	 b end
	 
	 #CASE 4
	 case4:
	 div $t4,$t0,$t1
	 
	 li $v0,4
	 la $a0,Division
	 syscall
	 
	 li $v0,1
	 move $a0,$t4
	 syscall
	  
	 b end
	 
	 #CASE 5
	 case5: 
	 li $v0,4
	 la $a0,Default
	 syscall
	 
	 b end
	 
	 end:
	 
	 li, $v0,10
	 syscall
	 
	 