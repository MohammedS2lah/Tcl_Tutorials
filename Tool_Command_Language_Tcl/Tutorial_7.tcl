puts "**** List Operations ****"

#Creating lists using list command
set lst0 [list Jan Mar April May]

set lst1 {June July August}

puts "List0 content is $lst0"

puts "List1 content is $lst1"

#Display the length of lst0
puts "Length of lst0 is [llength $lst0]"
#Display the third item in lst1
puts "Third item of lst1 is [lindex $lst1 2]"

#Check if Oct item exits in lst1 or not
set search [lsearch $lst1 Oct]

if {$search != -1} {
puts "Oct is existed in the list"
} else {
puts "Oct not existed in the list"
}

#Insert in lst0 “Feb” element in 2nd
set lst0 [linsert $lst0 1 Feb]

puts "List0 content is $lst0"

#Insert at the end of lst1 “Sep Oct Nov Dec” elements
puts "[lappend lst1 Sep Oct Nov Dec]"

puts "List1 content is $lst1"

#Concatenate the 2 lists in 1 list
set list2 [concat $lst0 $lst1]

#Display all the elements of list2 using lrange command
set l2_length [llength $list2]
puts "List2 content is [lrange $list2 0 [expr $l2_length -1]]"

#Display the content of list2 joined and separated by “ , “separator
puts "[join $list2 ", "]"

set l0_length [llength $lst0]

#Display the Uppercase version of all the contents of the list0
for {set i 0} {$i < $l0_length} {incr i} {
puts "Uppercase version of the $i element in list0 is [string toupper [lindex $lst0 $i]]"
}

#Display the lowercase version of all the contents of the list1
foreach i $lst1 {
puts "Lowercase version of the $i element in list1 is [string tolower $i]"
}
