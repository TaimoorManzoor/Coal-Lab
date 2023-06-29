.data
msg1: .asciiz "Welcome to Palindrome Checker\n"
msg2: .asciiz "Please enter the number: "
msg3: .asciiz "it is palidrome number\n"
msg4: .asciiz "it is not palidrome number\n"
msg5: .asciiz "\n"
.text
.globl main
main:

li $v0, 4		#Welcoming user block
la $a0, msg1
syscall

# 	li $t1 ==> r
#	li $t3 ==> temp

li $t2,0 	   #sum

#Asking for the Value for Palidrome check
li $v0, 4		
la $a0, msg2
syscall

#Taking Value from user 
li $v0,5	
syscall
move $t0, $v0	#n
move $t9,$t0	
do:
	# getting remainder
	div $t4,$t0,10
	mfhi $t1
	# sum
	mul $t5,$t2,10
	add $t2,$t5,$t1
	#div
	div $t0,$t0,10	
while:
beqz $t0,  end	#loop check
j do

end:
beq $t9,$t2 verify
j nonverify

verify:
# print the statement
li $v0, 4		
la $a0, msg3
syscall
b exit

nonverify:
# print the statement
li $v0, 4		
la $a0, msg4
syscall
b exit

exit:
li $v0, 10		#Exit Command
syscall