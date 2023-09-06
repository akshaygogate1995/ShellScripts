#!/bin/bash

FILEPATH="/home/ubuntu/shellscripts/test.csv"

if [[ -f $FILEPATH ]]
then
	echo "File Exists"
else
	echo "File does not exist"
	exit 1
fi

