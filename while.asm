.data 
msg:.asciiz"\nThe Values Are : "
.text

loop1:
sltiu $s1,$s0,10
beq $s1,0,exit
addi $s2,$s2,2
addi $s0,$s0,1

li $v0,4
la $a0,msg
syscall

li $v0,1
move $a0,$s2
syscall

j loop1

exit:
li $v0,10
syscall