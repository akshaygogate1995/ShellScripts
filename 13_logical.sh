#!/bin/bash

#Logical Operators

#AND

read -p "What is your age: " age
read -p "Enter Your Country: " country

if [[ $age -ge 18 ]] && [[ $country == india ]]
then
	echo "You can Vote"
else
	echo "You cannot vote"
fi

