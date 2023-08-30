#To display the message
puts "This is My First Script"

#set the values of the two variables
set var0 25
set var1 50

#To display the values of the two variables
puts "The value of var0 is $var0"
puts "The value of var1 is $var1"

#Create var2 with value equals to double of var1 
set var2 [expr $var1 * 2]

#To display the value of var2 in different ways
puts "The value of var2 is $var2"
puts {The value of var2 is $var2}
puts "The value of var2 is \$var2"