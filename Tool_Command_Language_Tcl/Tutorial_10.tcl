#Display on the screen the message
puts "****Writing Verilog Block Interface****"

#Creating a variable of name modname
set modname "Up_Dn_Counter"

#Creating a list of name in_ports which contians the input ports of the module 
set in_ports [list IN Load Up Down CLK]

#Creating a list of name in_ports_width
set in_ports_width [list 4 1 1 1 1]

#Creating a list of name out_ports which contians the output ports of the module
set out_ports [list High Counter Low]

#Creating a list named out_ports_width 
set out_ports_width [list 1 4 1]

#Opening a file to write in with its handler
set file_handle [open interface2.txt w+]

set in_width [lindex $in_ports_width 0]

#Creating a variable for the input whose width is not 1
set in_port [lindex $in_ports 0]

#Creating a variable for the output whose width is not 1
set out_port [lindex $out_ports 1]

set out_width [lindex $out_ports_width 1]

#Writing the Verilog block interface, displaying it on the screen
#and appending in the file
puts "module $modname ( " 
puts $file_handle "module $modname ( "

#A loop for the inputs
foreach i $in_ports {
if {$i == $in_port} {
puts " input \t \[[expr $in_width -1]:0\] \t $i,"
puts $file_handle " input \t \[[expr $in_width -1]:0\] \t $i,"
} else {
puts " input \t  \t $i,"
puts $file_handle " input \t  \t $i,"
}
}

#Another loop for the outputs
foreach o $out_ports {
if {$o == $out_port} {
puts " output  \[[expr $out_width -1]:0\]   $o,"
puts $file_handle " output  \[[expr $out_width -1]:0\]  $o,"
} else {
puts " output  \t $o,"
puts $file_handle " output  \t $o,"
}
}
puts " );"
puts $file_handle " );"

#Closing the file
close $file_handle
