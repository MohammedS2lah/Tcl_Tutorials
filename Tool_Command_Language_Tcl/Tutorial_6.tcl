#Display on the screen the message
puts "****Mathematical Operations****"

#Create a variable named a with a value of -64. 
set a -64

#Create a variable named b with a value of 49.
set b 49 

#Store the absolute value of variable a 
set var0 [expr abs($a)]

#Store the square root of variable b
set var1 [expr sqrt($b)]

#Display the contents of var0 and var1
puts "The content of var0 is $var0"
puts "The content of var1 is $var1"