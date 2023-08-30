#Opening the rtl file to read from it with its handler
set file_handle [open rtl.txt r+]

#Storing the data in a variable
set file_data [read $file_handle]

#Creating a temp list to hold the data
set temp "$file_data"

close $file_handle

puts "\nThe names from the file: \n\n$temp"

#Creating the new list with null value to store the RTL 
#file names as the list elements in the new format
set designs {}

foreach i $temp {
lappend designs $i
}

#Printing the new created list
puts "The new list: {$designs}"