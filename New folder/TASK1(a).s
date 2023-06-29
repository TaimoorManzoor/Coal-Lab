#a) (9-8) *12+(16-15) *(5 *2) = 22

.text
.globl main
main:

li $t1,9
li $t2,8
li $t3,12
li $t4,16
li $t5,15
li $t6,5
li $t7,2


sub $t8,$t1,$t2
mul $t9,$t8,$t3

sub $t1,$t4,$t5
mul $t2,$t6,$t7

mul $t3,$t1,$t2

add $t5,$t9,$t3

li $v0, 1
move $a0,$t5
syscall

li $v0,10	
syscall		#exit
