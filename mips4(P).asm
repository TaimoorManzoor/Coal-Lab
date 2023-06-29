.data
input_opt: .asciiz "Enter 0 for Addition and 1 for Average: "
input_num: .asciiz "Enter 3 numbers: \n"
input_sum: .asciiz "Sum : " 
input_avg: .asciiz "Average : "
space: .asciiz "\n "

.text
.global main
main:

#Store option value for Sum:
li $v0, 4
la $a0, input_opt
syscall

#option value
li $v0, 5
syscall
move $t0, $v0

#Store numbers
li $v0, 4
la $a0, input_num
syscall

#No_1
li $v0, 5
syscall
move $t1, $v0

#No_2
li $v0, 5
syscall
move $t2, $v0


#No_3
li $v0, 5
syscall
move $t3, $v0

case: # 1
beq, $t0, 0, sum
beq, $t0, 1, avg

sum:
add $t4,$t1,$t2
add $t5,$t4,$t3


#print Sum command
li $v0, 4	
la $a0, input_sum
syscall


#print sum no
li $v0, 1
move $a0, $t5
syscall

j exit

avg:
add $t4,$t1,$t2
add $t5,$t4,$t3

li $t6, 3
# add $t6,$t4,$t5
div $t7,$t5,$t6


#print avg command
li $v0, 4
la $a0, input_avg
syscall
#print avg no
li $v0, 1
move $a0, $t7
syscall

j exit

exit:
li $v0, 10
syscall

