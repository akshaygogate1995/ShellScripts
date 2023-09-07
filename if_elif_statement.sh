#!/bin/bash

#ifelif statement

read -p "Enter your 1st Number - " NUM1
read -p "Enter your 2nd Number - " NUM2
read -p "Enter your 3rd Number - " NUM3

if [[ $NUM1 -gt $NUM2 && $NUM1 -gt $NUM3 ]]
then 
	echo "$NUM1 is Biggest among all"
elif [[ $NUM2 -gt $NUM1 && $NUM2 -gt $NUM3 ]]
then
	echo "$NUM2 is Biggest among all"
else
	echo "$NUM3 is Biggest among all"
fi


