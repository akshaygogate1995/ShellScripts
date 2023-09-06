#!/bin/bash

#Script for how to use variables

a=10
name="akshay"
age=28

echo "My name is $name"
echo "MY age is $age"
echo "my fav number is $a"

name="PAul"
echo "my name is $name"

#variable to store outcome of command
HOSTNAME=$(hostname)

echo "name of this machine is $HOSTNAME"

