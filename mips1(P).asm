
.data

.text
.global main.
main:

li $t1,9
li $t2,3
li $t3,6
li $t4,14
li $t5,9
li $t6,4
li $t7,3
# (9-3)
sub $t8,$t1,$t2
# (9-3) *6
mul $t9,$t8,$t3

# (14-9)
sub $t1,$t4,$t5
# (4 *3)
mul $t2,$t6,$t7

# (14-9) *(4 *3)
mul $t3,$t1,$t2
# (9-3) *6+(14-9) *(4 *3)
add $t4,$t9,$t3

li $v0 ,1
move $a0,$t4
syscall


li $v0,10
syscall

 

