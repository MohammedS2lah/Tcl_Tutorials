puts "**** Arithmetic Operations on Integer Operands****"

set A 35
set B 80

#Adding A & B using command & variable substitution.
set var00 [expr $A + $B]
#subtracting A & B using command & variable substitution
set var01 [expr $A - $B]
set var02 [expr $A * $B]
set var03 [expr $A / $B]
set var04 [expr $A % $B]

#Display the contents of var00 & var01 & var02 & var03 & var04
# using variable substitution.
puts "var00 = A + B = $var00"
puts "var01 = A - B = $var01"
puts "var02 = A * B = $var02"
puts "var03 = A / B = $var03"
puts "var04 = A % B = $var04"


puts "**** Arithmetic Operations on Floating Operands****"

set C 35.0
set D 80

set var05 [expr $C + $D]
set var06 [expr $C - $D]
set var07 [expr $C * $D]
set var08 [expr $C / $D]
set var09 [expr $A % $B]

puts "var05 = C + D = $var05"
puts "var06 = C - D = $var06"
puts "var07 = C * D = $var07"
puts "var08 = C / D = $var08"
#Reminder is valid for integers only
puts "var09 = A % B = $var09"