#Display on the screen the message
puts "****Bitwise Operations****"

#Create a variable named a with a value of 20. 
set a 20

#Create a variable named b with a value of 5. 
set b 5

#Create a variable named c with a value of 9
set c 9

#Bitwise AND of variables a and c
set var0 [expr $a & $c]

#Bitwise OR of variables a and b
set var1 [expr $a | $b]

#Bitwise XOR of variables a and a
set var2 [expr $a ^ $a]

#Display the contents of var0, var1, and var2
puts "The contents of var0 is $var0"
puts "The contents of var1 is $var1"
puts "The contents of var2 is $var2"