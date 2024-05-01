.data
input:     .asciiz "Enter number: "
result:     .asciiz "Ignoring all Negatives, the sum is: "
newline:    .asciiz "\n"

.text
.globl main

main:
    # Initialize variables
    li $t0, 0      # sum = 0
    li $t1, 1      # Load 1 for comparison

input_loop:
    # Print the prompt
    li $v0, 4
    la $a0, input
    syscall

    # Read an integer
    li $v0, 5
    syscall
    move $t2, $v0  # Store the input in $t2

    # Check if the input is 0
    beq $t2, $zero, done

    # Check if the input is positive
    bgt $t2, $zero, add

    # If not positive, skip adding and continue
    j input_loop

add:
    # Add the positive number to the sum
    add $t0, $t0, $t2

    # Continue to the next iteration
    j input_loop

done:
    # Print the result
    li $v0, 4
    la $a0, result
    syscall

    # Print the sum
    li $v0, 1
    move $a0, $t0
    syscall

    # Print a newline
    li $v0, 4
    la $a0, newline
    syscall

    # Exit
    li $v0, 10
    syscall

