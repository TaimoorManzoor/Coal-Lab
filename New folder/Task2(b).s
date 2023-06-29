#b) (A*B)+X-B
.text
.globl main
main:

li $v0,5	#input For the value of A
syscall
move $t0,$v0	# t0=A
li $v0,5	#input for the value of B
syscall	
move $t1,$v0	#t1 = B
li $v0,5	#input for the value of X
syscall	
move $t2,$v0	#t2=X	

mul $t3,$t0,$t1 	#a=2, b=2 (a*b) = 4
sub $t4,$t2,$t1		#x=4, b=2 x-b = 2
add $t5,$t4,$t3		#$t5 = 4+2=6

li $v0, 1
move $a0,$t5
syscall

li $v0,10	
syscall	