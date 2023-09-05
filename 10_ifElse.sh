#!/bin/bash

#Ifelse statement exmaple


read -p "Enter Your Marks: " marks

if [[ $marks -gt 40 ]] 
then 
	echo "You are passsed"
else
	echo "You are failed"
fi

 
