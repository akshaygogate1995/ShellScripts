#!/bin/bash

#Script for String Operations 


myVar="Hell Buddy How are You"

myVarLength=${#myVar}

echo "Length of myVar is $myVarLength"

echo "Upper case is            ${myVar^^}"

echo "Lower case is            ${myVar,,}"

#How to replace String

newvar=${myVar/Buddy/ALL}

echo "my New Var is --- $newvar"

# who to use slice in shell

echo "After slice ${myVar:4:5}"





