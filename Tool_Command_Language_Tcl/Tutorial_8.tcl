#Display on the screen the message
puts "****lists and foreach*****"

#Create a list of name “cities”
set cities "\ncairo \nalexandria \ndamietta \ndakahlia \nfaiyum \nsohag \naswan"

#Display The old list
puts "The old list is:  $cities"

#Creatin a new list with null value
set Cities_New {}

#Changing the format of the elements name and storing them 
#in a new list of name “Cities_New” to have the first character “Uppercase Letter”
#and the rest of letters are “Lowercase” by looping on the list element using foreach
foreach i $cities {
lappend Cities_New [string totitle $i]
}

#Display The new list
puts "\n\nThe new list is:"

foreach i $Cities_New {
puts "$i"
}