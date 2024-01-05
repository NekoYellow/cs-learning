##############################################################################
#
#  KURS: 1DT038 2018.  Computer Architecture
#	
# DATUM: 2023-11-10
#
#  NAMN: Yueyuan Huang
#
#  NAMN: Shiqi Shu
#
##############################################################################

	.data
	
ARRAY_SIZE:
	.word	10	# Change here to try other values (less than 10)
FIBONACCI_ARRAY:
	.word	1, 1, 2, 3, 5, 8, 13, 21, 34, 55
STR_str:
	.asciiz "Hunden"
STR_word:
	.asciiz "CAMEL"

	.globl DBG
	.text

##############################################################################
#
# DESCRIPTION:  For an array of integers, returns the total sum of all
#		elements in the array.
#
# INPUT:        $a0 - address to first integer in array.
#		$a1 - size of array, i.e., numbers of integers in the array.
#
# OUTPUT:       $v0 - the total sum of all integers in the array.
#
##############################################################################
integer_array_sum:  

DBG:	##### DEBUGG BREAKPOINT ######

    addi    $v0, $zero, 0           # Initialize Sum to zero.
	add		$t0, $zero, $zero	# Initialize array index i to zero.
	lw		$t4, ARRAY_SIZE
	
for_all_in_array:

	#### Append a MIPS-instruktion before each of these comments
	
	beq		$t0, $t4, end_for_all # Done if i == N
	add		$t1, $t0, $t0
	add		$t1, $t1, $t0
	add		$t1, $t1, $t0    # 4*i
	add		$t2, $a0, $t1    # address = ARRAY + 4*i
	lw		$t3, 0($t2)      # n = A[i]
    add		$v0, $v0, $t3    # Sum = Sum + n
    addi	$t0, $t0, 1      # i++ 
  	j		for_all_in_array # next element
	
end_for_all:
	
	jr		$ra			# Return to caller.
	
##############################################################################
#
# DESCRIPTION: Gives the length of a string.
#
#       INPUT: $a0 - address to a NUL terminated string.
#
#      OUTPUT: $v0 - length of the string (NUL excluded).
#
#    EXAMPLE:  string_length("abcdef") == 6.
#
##############################################################################	
string_length:

	#### Write your solution here ####
	addi 	$v0, $zero, 0
	strlen_loop:
	lb		$t0, 0($a0)
	beq 	$t0, $zero, strlen_end
	addi	$v0, $v0, 1
	addi 	$a0, $a0, 1
	j		strlen_loop
	strlen_end:
	jr		$ra
	
##############################################################################
#
#  DESCRIPTION: For each of the characters in a string (from left to right),
#		call a callback subroutine.
#
#		The callback suboutine will be called with the address of
#	        the character as the input parameter ($a0).
#	
#        INPUT: $a0 - address to a NUL terminated string.
#
#		$a1 - address to a callback subroutine.
#
##############################################################################	
string_for_each:

	addi	$sp, $sp, -4		# PUSH return address to caller
	sw		$ra, 0($sp)

	#### Write your solution here ####
	strforeach_loop:
	lb		$t0, 0($a0)
	beq 	$t0, $zero, strforeach_end
	# save $t0 and $a0
	addi	$sp, $sp, -4
	sw  	$t0, 0($sp)
	addi	$sp, $sp, -4
	sw		$a0, 0($sp)
	# call callback subroutine
	jal		$a1
	# restore $a0 and $t0
	lw  	$a0, 0($sp)
	addi	$sp, $sp, 4
	lw		$t0, 0($sp)
	addi 	$sp, $sp, 4
	# go to next character
	addi	$a0, $a0, 1
	j 		strforeach_loop

	strforeach_end:
	lw		$ra, 0($sp)		# Pop return address to caller
	addi	$sp, $sp, 4

	jr	$ra

##############################################################################
#
#  DESCRIPTION: Transforms a lower case character [a-z] to upper case [A-Z].
#	
#        INPUT: $a0 - address of a character 
#
##############################################################################		
to_upper:

	#### Write your solution here ####
	lb		$t0, 0($a0)
	slti	$t1, $t0, 97 # $t1 = 1 if $t0 < 97
	addi 	$t2, $zero, 1
	sub 	$t1, $t2, $t1 # $t1 = not $t1
	slti	$t2, $t0, 123 # $t2 = 1 if $t0 < 123
	and		$t1, $t1, $t2 # $t1 = 1 if $t0 represents a lower case character

	beq		$t1, $zero, toupper_end # if $t0 is not lower-case then return
	addi 	$t0, $t0, -32
	sb		$t0, 0($a0)

    toupper_end:
	jr	$ra

##############################################################################
#
#  DESCRIPTION: Reverses a string.
#	
#        INPUT: $a0 - address to a NUL terminated string.
#
##############################################################################
reverse_string:
	
	addi	$sp, $sp, -4
	sw		$ra, 0($sp)
	
	addi	$sp, $sp, -4
	sw		$a0, 0($sp)
	jal		string_length
	lw		$a0, 0($sp)
	addi	$sp, $sp, 4
	add		$t0, $a0, $v0 # the right pointer ($a0 is the left pointer)
	addi	$t0, $t0, -1

	strrev_loop:
	sub		$t2, $t0, $a0
	slti	$t2, $t2, 2
	addi	$t3, $zero, 1
	beq		$t2, $t3, strrev_end # if r-l < 2 then return
	lb		$t1, 0($a0)
	lb		$t2, 0($t0)
	sb		$t1, 0($t0)
	sb		$t2, 0($a0)
	addi	$a0, $a0, 1
	addi	$t0, $t0, -1
	j		strrev_loop

	strrev_end:
	lw		$ra, 0($sp)
	addi	$sp, $sp, 4
	jr	$ra


##############################################################################
#  DESCRIPTION: Judges if a letter is in upper case [A-Z].
#        INPUT: $a0 - address of a character
#       OUTPUT: $v0 - if the character is in upper case
##############################################################################		
is_upper:

	lb		$t0, 0($a0)
	slti	$v0, $t0, 65 # $v0 = 1 if $t0 < 65
	addi 	$t1, $zero, 1
	sub 	$v0, $t1, $v0 # $v0 = not $v0
	slti	$t1, $t0, 91 # $t1 = 1 if $t0 < 91
	and		$v0, $v0, $t1 # $v0 = 1 if $t0 represents an upper case character

	jr	$ra

##############################################################################
#  DESCRIPTION: Transforms an upper case character [A-Z] to lower case [a-z].
#        INPUT: $a0 - address of a character 
##############################################################################		
to_lower:

	addi	$sp, $sp, -4
	sw		$ra, 0($sp)

	jal		is_upper
	beq		$v0, $zero, tolower_end # if $t0 is not upper-case then return
	lb		$t0, 0($a0)
	addi 	$t0, $t0, 32
	sb		$t0, 0($a0)

    tolower_end:
	lw		$ra, 0($sp)
	addi	$sp, $sp, 4
	jr	$ra

##############################################################################
#  DESCRIPTION: Enforces a camelcase pattern on a string.
#        INPUT: $a0 - address to a NUL terminated string.
##############################################################################
camelcase:
	
	addi	$sp, $sp, -4
	sw		$ra, 0($sp)

	addi	$t0, $zero, 0 # odd or even
	camel_loop:
	lb		$t1, 0($a0)
	beq		$t1, $zero, camel_end

	addi	$sp, $sp, -4
	sw		$t0, 0($sp)
	jal		to_upper
	lw		$t0, 0($sp)
	addi	$sp, $sp, 4

	beq		$t0, $zero, camel_next # stay upper if current index is odd
	
	addi	$sp, $sp, -4
	sw		$t0, 0($sp)
	jal		to_lower
	lw		$t0, 0($sp)
	addi	$sp, $sp, 4

	camel_next:
	addi	$a0, $a0, 1
	addi	$t1, $zero, 1
	sub		$t0, $t1, $t0 # $t0 = not $t0
	j		camel_loop

	camel_end:
	lw		$ra, 0($sp)
	addi	$sp, $sp, 4
	jr	$ra

##############################################################################
#
# Strings used by main:
#
##############################################################################

	.data

NLNL:	.asciiz "\n\n"
	
STR_sum_of_fibonacci_a:	
	.asciiz "The sum of the " 
STR_sum_of_fibonacci_b:
	.asciiz " first Fibonacci numbers is " 

STR_string_length:
	.asciiz	"\n\nstring_length(str) = "

STR_for_each_ascii:	
	.asciiz "\n\nstring_for_each(str, ascii)\n"

STR_for_each_to_upper:
	.asciiz "\n\nstring_for_each(str, to_upper)\n\n"	

STR_for_reverse_string:
	.asciiz "\n\nstring_reverse\n\n"

STR_for_camelcase:
	.asciiz "\n\nCAMELCASE\n\n"

	.text
	.globl main

##############################################################################
#
# MAIN: Main calls various subroutines and print out results.
#
##############################################################################	
main:
	addi	$sp, $sp, -4	# PUSH return address
	sw	$ra, 0($sp)

	##
	### integer_array_sum
	##
	
	li	$v0, 4
	la	$a0, STR_sum_of_fibonacci_a
	syscall

	lw 	$a0, ARRAY_SIZE
	li	$v0, 1
	syscall

	li	$v0, 4
	la	$a0, STR_sum_of_fibonacci_b
	syscall
	
	la	$a0, FIBONACCI_ARRAY
	lw	$a1, ARRAY_SIZE
	jal 	integer_array_sum

	# Print sum
	add	$a0, $v0, $zero
	li	$v0, 1
	syscall

	li	$v0, 4
	la	$a0, NLNL
	syscall
	
	la	$a0, STR_str
	jal	print_test_string

	##
	### string_length 
	##
	
	li	$v0, 4
	la	$a0, STR_string_length
	syscall

	la	$a0, STR_str
	jal 	string_length

	add	$a0, $v0, $zero
	li	$v0, 1
	syscall

	##
	### string_for_each(string, ascii)
	##
	
	li	$v0, 4
	la	$a0, STR_for_each_ascii
	syscall
	
	la	$a0, STR_str
	la	$a1, ascii
	jal	string_for_each

	##
	### string_for_each(string, to_upper)
	##
	
	li	$v0, 4
	la	$a0, STR_for_each_to_upper
	syscall

	la	$a0, STR_str
	la	$a1, to_upper
	jal	string_for_each
	
	la	$a0, STR_str
	jal	print_test_string

	##
	### reverse_string 
	##

	li	$v0, 4
	la	$a0, STR_for_reverse_string
	syscall
	
	la	$a0, STR_str
	jal	reverse_string

	la	$a0, STR_str
	jal	print_test_string

	##
	### camelcase
	##

	li	$v0, 4
	la	$a0, STR_for_camelcase
	syscall
	
	la	$a0, STR_word
	jal	camelcase

	la	$a0, STR_word
	jal	print_test_string


	lw	$ra, 0($sp)	# POP return address
	addi	$sp, $sp, 4	
	
	jr	$ra

##############################################################################
#
#  DESCRIPTION : Prints out 'str = ' followed by the input string surronded
#		 by double quotes to the console. 
#
#        INPUT: $a0 - address to a NUL terminated string.
#
##############################################################################
print_test_string:	

	.data
STR_str_is:
	.asciiz "str = \""
STR_quote:
	.asciiz "\""	

	.text

	add	$t0, $a0, $zero
	
	li	$v0, 4
	la	$a0, STR_str_is
	syscall

	add	$a0, $t0, $zero
	syscall

	li	$v0, 4	
	la	$a0, STR_quote
	syscall
	
	jr	$ra
	

##############################################################################
#
#  DESCRIPTION: Prints out the Ascii value of a character.
#	
#        INPUT: $a0 - address of a character 
#
##############################################################################
ascii:	
	.data
STR_the_ascii_value_is:
	.asciiz "\nAscii('X') = "

	.text

	la	$t0, STR_the_ascii_value_is

	# Replace X with the input character
	
	add	$t1, $t0, 8	# Position of X
	lb	$t2, 0($a0)	# Get the Ascii value
	sb	$t2, 0($t1)

	# Print "The Ascii value of..."
	
	add	$a0, $t0, $zero 
	li	$v0, 4
	syscall

	# Append the Ascii value
	
	add	$a0, $t2, $zero
	li	$v0, 1
	syscall


	jr	$ra
	
