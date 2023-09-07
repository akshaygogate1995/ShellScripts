#!/bin/bash


#Author - Akshay Gogate
#Checking Disk space and alerting
#version - V1
#date - 7Th SEPT
alert=90
df -H | awk '{print $5 " " $1}' | while read output;
do
	#echo "Disk Detail: $output"
	usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
	file_sys=$(echo $output | awk '{print $2}')
	#echo $usage
	if [ $usage -ge $alert ]
	then 
		echo "Critical for $file_sys"
	fi
done

