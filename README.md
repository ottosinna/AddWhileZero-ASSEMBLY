This MIPS assembly code is a simple program that repeatedly prompts the user 
to enter numbers until they enter 0. It then calculates the sum of all positive 
numbers entered and prints the result.

Here's a summary of what it does:

Initialization:
$t0 is set to 0, which will hold the sum.
$t1 is set to 1, which is used for comparison.
Input Loop:
It prints "Enter number: " to prompt the user.
It reads an integer from the user.
If the input is 0, the program exits the loop.
If the input is positive (greater than 0), it adds it to the sum and continues.
If the input is negative, it skips adding and goes back to the input prompt.
Addition (add):
Positive numbers are added to the sum.
Done:
When the loop exits (input is 0), it prints "Ignoring all Negatives, the sum is: ".
It prints the sum.
It prints a newline.
Finally, it exits the program.
This program essentially computes the sum of all positive numbers entered 
by the user while ignoring negative numbers, and then displays the sum.
