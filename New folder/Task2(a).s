# a) (X+Y)*Z+X-Y
.text
.globl main
main:


li $v0,5	#input For the value of X
syscall
move $t0,$v0	# t0=X
li $v0,5	#input for the value of Y
syscall	
move $t1,$v0	#t1 = Y
li $v0,5	#input for the value of Z
syscall	
move $t2,$v0	#t2=Z	

add $t3,$t0,$t1 	#x=10, y=10 (X+Y) = 3
mul $t4,$t3,$t2		#z=4,	(X+Y)*Z = 12
add $t5,$t4,$t0		#$t5 = 12+1=13
sub $t6,$t5,$t1		#$t6 = 13-2 = 11


li $v0, 1
move $a0,$t6
syscall

li $v0,10	
syscall	