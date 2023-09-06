#!/bin/bash

FREE_DISK=$(df -h | grep "/dev/root" | awk '{print$5}' | tr -d %)

TO="akshay.gogate@gmail.com"

if [[ $FREE_DISK -lt 20% ]]
then 
	echo " Free disk is very low below 30% and it is $FREE_DISK" | mail -s "DISK free Alert" $TO
else
	echo "Free disk is fine and it is $FREE_DISK"
fi


