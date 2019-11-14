
#########  routine to print the numbers on one line. 

      .data
head: .asciiz  "x = "
newline: .asciiz "\n"
      .text
start:
	addi  $t0, $zero, 100  
	addi  $t1, $zero, 10  
print:
      la   $a0, head        # load address of print heading
      li   $v0, 4           # specify Print String service
      syscall               # print heading
      move    $a0, $t0      # load fibonacci number for syscall
      li   $v0, 1           # specify Print Integer service
      syscall               
      la   $a0, newline       
      li   $v0, 4           # specify Print String service
      syscall               
      addi $t0, $t0, 1      
      addi $t1, $t1, -1     # decrement loop counter
      bgtz $t1, print       # repeat if not finished
     
	
