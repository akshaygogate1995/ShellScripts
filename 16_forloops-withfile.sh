#!/bin/bash

#How to iterate data from file

FILE="/home/ubuntu/shellscripts/names.txt"

for name in $(cat $FILE)
do
	echo "name is $name"
done


