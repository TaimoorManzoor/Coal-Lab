#c) (4*1) +(7-3) -(8*3) = -16

.text
.globl main
main:
li $t1,4
li $t2,1
li $t3,7
li $t4,3
li $t5,8
li $t6,3

mul $t7, $t1 ,$t2 	#t7=4 

sub $t8, $t3 ,$t4	#t8=4

mul $t9, $t5 ,$t6	#t9=18

add $t1, $t7 ,$t8	#t1=8

sub $t2, $t1 ,$t9	#t1=8

li $v0, 1
move $a0,$t2
syscall

li $v0,10	
syscall	