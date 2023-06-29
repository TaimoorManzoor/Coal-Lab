# (X*Y)+Z+X-Y
.data
x : .asciiz "Enter the Value of X \n"
y : .asciiz "Enter the Value of y \n"
z : .asciiz "Enter the Value of z \n"
Ans :.asciiz "The Ans is : "

.text
.global main
main:
	 
# Print the Statement
li,$v0,4
la,$a0,x
syscall

# Taking Input From User
li,$v0,5
syscall
move $t0,$v0

# Print the Statement
li,$v0,4
la,$a0,y
syscall

# Taking Input From User
li,$v0,5
syscall
move $t1,$v0

# Print the Statement
li,$v0,4
la,$a0,z
syscall

# Taking Input From User
li,$v0,5
syscall
move $t2,$v0

#(X*Y)
mul $t3,$t0,$t1
# X-Y
sub $t4,$t0,$t1

# (X*Y)+Z
add $t5,$t3,$t2
# (X*Y)+Z+X-Y
add $t6,$t5,$t4

# Print the Statement
li,$v0,4
la,$a0,Ans
syscall

li $v0 ,1
move $a0,$t6
syscall

exit:
li $v0,10
syscall