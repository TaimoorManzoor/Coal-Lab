.data
num1 : .asciiz "Enter the Value of num1  \n"
num2 : .asciiz "Enter the Value of num2 \n"
num3 : .asciiz "Enter the Value of num3 \n"
num4 : .asciiz "Enter the Value of num4 \n"
num5 : .asciiz "Enter the Value of num5 \n"
Max :.asciiz "The Max is : "

.text
.global main
main:
	 
# Print the Statement
li,$v0,4
la,$a0,num1
syscall

# Taking Input From User
li,$v0,5
syscall
move $t1,$v0

# Print the Statement
li,$v0,4
la,$a0,num2
syscall

# Taking Input From User
li,$v0,5
syscall
move $t2,$v0

# Print the Statement
li,$v0,4
la,$a0,num3
syscall

# Taking Input From User
li,$v0,5
syscall
move $t3,$v0

# Print the Statement
li,$v0,4
la,$a0,num4
syscall

# Taking Input From User
li,$v0,5
syscall
move $t4,$v0
# Print the Statement
li,$v0,4
la,$a0,num5
syscall

# Taking Input From User
li,$v0,5
syscall
move $t5,$v0
# case 
bgt $t1,$t2 case1
bgt $t2,$t1 case2
bgt $t3,$t1 case3
bgt $t4,$t1 case4
bgt $t5,$t1 case5
# Checking Function for number 1
############################
case1:
bgt $t1,$t3 case11
b case33

case11:
bgt $t1,$t4 case111
b case444

case111:
bgt $t1,$t5 case1111
b case5555

case1111:
li,$v0,4
la,$a0,Max
syscall

li $v0 ,1
move $a0,$t1
syscall
b end
# Checking Function for number 2
############################

case2:
bgt $t2,$t3 case22
b case33

case22:
bgt $t2,$t4 case222
b case44
 
case222:
bgt $t2,$t5 case2222
b case55

case2222:
li,$v0,4
la,$a0,Max
syscall

li $v0 ,1
move $a0,$t2
syscall
b end
# Checking Function for number 3
############################

case3:
bgt $t3,$t2 case33
b case22

case33:
bgt $t3,$t4 case333
b case444
case333:
bgt $t3,$t5 case3333
b case555

case3333:
li,$v0,4
la,$a0,Max
syscall

li $v0 ,1
move $a0,$t3
syscall
b end
# Checking Function for number 4
############################

case4:
bgt $t4,$t2 case44
b case222
case44:
bgt $t4,$t3 case444
b case333

case444:
bgt $t4,$t5 case4444
b case5555
case4444:
li,$v0,4
la,$a0,Max
syscall

li $v0 ,1
move $a0,$t4
syscall
b end

# Checking Function for number 5
############################

case5:

bgt $t5,$t2 case55
b case22

case55:
bgt $t5,$t3 case555
b case333

case555:
bgt $t5,$t4 case5555
b case4444

case5555:
li,$v0,4
la,$a0,Max
syscall

li $v0 ,1
move $a0,$t5
syscall
b end

end:
li $v0,10
syscall