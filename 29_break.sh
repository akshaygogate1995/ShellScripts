#!/bin/bash

# Example of Break in a Loop

# We just need to confirm if a given number is present or not

no=6

for i in 1 2 3 4 5 6 7 8 9 
do
	#Break the loop if no found
	if [[ $no -eq $i ]]
	then
		echo "$no is found !!!"
		break
	fi
	echo "Number is $i"
done

