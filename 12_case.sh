#! /bin/bash 

echo "provide an option"
echo "a for print date"
echo "b for listing files in current dir"
echo "c to check current location"

read choice 

case $choice in 
	a) 
		echo "Todays date is"
		date
		echo "Ending..."
		;;
	b) ls;;
	c) pwd;;
	d) echo "please provide valid input" 
esac
