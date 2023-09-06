#!/bin/bash

read -p "Enter number 1 for addition" $1
read -p "Enter Number 2 for addition" $2
read -p "Enter Number for Multiplication" $3
read -p "Enter Number for 2nd Mul Number" $4
function add {
	let sum=$1+$2
	echo " addition is $sum"

}

function mul {
	let mul=$3*$4
	echo "Multiply is $mul"
}

add $1 $2
mul $3 $4

