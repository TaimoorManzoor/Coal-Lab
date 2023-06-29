#b) (7+5) -(3*6) +8 = 2
.text
.globl main
main:
li $t1,7
li $t2,5
li $t3,3
li $t4,6
li $t5,8

add $t6, $t1 ,$t2 	#t6=12 

mul $t7, $t3 ,$t4	#t7=18

sub $t8, $t6 ,$t7	#t8=6
add $t9, $t8 ,$t5


li $v0, 1
move $a0,$t9
syscall

li $v0,10	
syscall		
