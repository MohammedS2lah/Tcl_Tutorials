puts "**** Arrays & Procedures ****"

#Declaring arrays using array set (key/value)
array set Mohamed {Waves 70 Electronics 85 Control 65 Comm 78}
array set Ahmed   {Waves 66 Electronics 80 Control 88 Comm 69}
array set Mostafa {Waves 72 Electronics 77 Control 70 Comm 88}

#procedure that take array as an argument and calculate the average of the elements in the array.
proc Avg {Array} {
#to use an array defined outside the procedure inside the procedure.
upvar $Array arr 

set sum 0.0

set grades_num [array size arr] 

foreach i [array names arr] {
set sum [expr $sum + $arr($i)]
}
set GPA [expr $sum / $grades_num]

return $GPA
}

#Calculating the GPAs and storing the result in variables
set Mohamed_GPA [Avg Mohamed]
puts "Mohamed Accumulative GPA is $Mohamed_GPA %"

set Ahmed_GPA [Avg Ahmed]
puts "Ahmed Accumulative GPA is $Ahmed_GPA %"

set Mostafa_GPA [Avg Mostafa]
puts "Mostafa Accumulative GPA is $Mostafa_GPA %"