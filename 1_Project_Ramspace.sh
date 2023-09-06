#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=100

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "Warning is running below 500"
else
	echo "Ram space is fine - $FREE_SPACE M"
fi


