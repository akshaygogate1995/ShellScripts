#!/bin/bash

#Arrays

myArray=( 1 20 34 50.1 62.9 Hello Hi "My Name is AKshay" )

echo "${myArray[3]}"
echo "All the values in the Array are ${myArray[*]}"

#How to find length of an array

echo "Length of an array is ${#myArray[*]}"

#How to find values from index 2 to 4

echo "Values from index 2 to 4 is ${myArray[*]:2:3}"

#How to update an array with new values

myArray+=( New 30 40 )

echo "values of new Arrays are ${myArray[*]}"

