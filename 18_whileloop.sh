#!/bin/bash

count=0
num=10

while [[ $count -le $num ]]
do
	echo "Value of Coout var is $count"
	let count++
done
