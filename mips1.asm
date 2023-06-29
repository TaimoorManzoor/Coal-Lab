# Write a program in MIPS that will take input and store  in an array then print the sum of first all numbers.
.data
# intailize the space
array: .space 20

in: .asciiz "array elements; "
sum: .asciiz "sum is: "
n: .asciiz "\n"

.text
.globl main
main:
# load address of the array
la $t0,array		
move $t1,$t0		

#load the register 
li $t2,0
li $t3,0
li $t5,0		
# loop  
for:
# condition of loop
bgt $t2,4,for1

# print the form
li $v0,4
la $a0,in
syscall

# taking the input
li $v0,5
syscall

# store the value of atm
sw $v0,($t0)		

#increment
add $t0,$t0,4		
add $t2,$t2,1		

j for

for1:
#condition
bgt $t3,4,end

# lw load word
lw $t4,($t1)		
# addition the sum
add $t5,$t5,$t4
			
#increment			
add $t1,$t1,4		
add $t3,$t3,1		

j for1

end:
#print
li $v0,4
la $a0,n
syscall

#print sum
li $v0,4
la $a0,sum
syscall
#print the answer
li $v0,1
move $a0,$t5
syscall
#end
li $v0,10
syscall
