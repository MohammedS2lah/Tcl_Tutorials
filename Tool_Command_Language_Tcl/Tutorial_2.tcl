#Display on the screen the message
puts "****Logical Operations****"

#Create a variable named a with a value of 5.
set a 5

#Create a variable named b with a value of -1.
set b -1

#Create a variable named c with a value of 0
set c 0

#Logical AND of variables a and c
set var0 [expr $a && $c]

#Logical OR of variables a and b
set var1 [expr $a || $b]

#Display the contents of var0 and var1
puts "The content of var0 is $var0"
puts "The content of var1 is $var1"