# Write a program in MIPS that will take input and print the sum of first all 10 natural numbers.
.data

n : .asciiz "Enter the Number for sum:\n"
sum :.asciiz "The sum is : "

.text
.global main
main:
	 
# Print the Statement
li,$v0,4
la,$a0,n
syscall

# Taking Input From User
li,$v0,5
syscall
move $t0,$v0


#Load t1
li $t1,1
li $t2,0 #sum
	  
for:
bgt $t1,$t0,exit
add $t2,$t2,$t1
add $t1,$t1,1

li,$v0,1
move $a0,$t2
syscall
b for


exit:
li $v0,10
syscall
