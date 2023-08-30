puts "**** File I/O & Regsub Lab****"

#Opening interface1.txt file for reading
set file_handle [open interface1.txt r+]
set file_data [read $file_handle]

#Display the file content
puts "File data: $file_data"

#Substituting input word by reg word in the file data
regsub -nocase -all "input" $file_data "reg" file_data

#Substitute output word by wire word in the file data
regsub -nocase -all "output" $file_data "wire" file_data

#Add a prefix to all the input port names and a semi colon after all the ports
foreach in {IN Load Up Down CLK} {
regsub -nocase -all "$in" $file_data "i_$in;" file_data
}

#Add a prefix to all the output port names and a semi colon after all the ports
foreach out {High Counter Low} {
regsub -nocase -all "$out" $file_data "o_$out;" file_data
}

#Display the file's new content
puts "File's new data: $file_data"

close $file_handle

#Open tb1.txt file for writing
set file_handle2 [open tb1.txt w+]

puts $file_handle2 $file_data

close $file_handle2