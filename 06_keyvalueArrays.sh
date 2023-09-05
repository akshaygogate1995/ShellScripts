#!/bin/bash

#How to store key value pair

declare -A myArray

myArray=( [name]=Akshay [age]=28 [city]=Pune )

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"


