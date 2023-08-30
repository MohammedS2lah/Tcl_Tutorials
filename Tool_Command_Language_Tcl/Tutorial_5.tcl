puts " **** String Manipulation **** "
set str1 "MahmoudAhmed@gmail.com"
set str2 "MostafaAli@hotmail.com"

#Display the length of str1 string.
set str1_len [string length $str1]
puts "The length of str1 is $str1_len"

#Display the string before @ of str1 in Uppercase
set str1_before_at [string range $str1 0 [expr [string last @ $str1] - 1]]
puts "str1 Email Name is [string toupper $str1_before_at]"

#Display the domain name of str2 string
set str2_at_index [string last @ $str2]
set str2_dot_index [string last . $str2]
set str2_domain [string range $str2 [expr $str2_at_index + 1] [expr $str2_dot_index - 1]]
puts "Domain Name of str2 is $str2_domain"

#Change the domain name of str1 from gmail to hotmail and display
append str1_before_at {@hotmail.com}
puts "The new mail address is $str1_before_at"

#To show str1 content
puts "str1 is $str1"

#Check if str1 belongs to gmail domain or not.
if {[string match *gmail.com $str1]} {
puts "it is a gmail account"
} else {
puts "it is not a gmail account"
}

#Check if str2 belongs to gmail domain or not.
if {[string match *gmail.com $str2]} {
puts "it is a gmail account"
} else {
puts "it is not a gmail account"
}