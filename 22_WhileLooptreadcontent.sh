#!/bin/bash

while read myVar
do
	echo "value from my file is $myVar"
done < names.txt

