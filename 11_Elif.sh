#!/bin/bash

#Elif Demo 

read -p "Enter your Marks: " marks

if [[ $marks -ge 80 ]]
then 
	echo "You got Grade A"
elif [[ $marks -ge 60 ]]
then 
	echo "You got grade B"
elif [[ $marks -ge 40 ]]
then
	echo "You are just passed with Grade C"
else
	echo " You are failed"
fi
