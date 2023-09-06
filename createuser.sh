#!/bin/bash

#Name : Akshay Gogate
#Revision : 001
#Date : 9TH Sept, 2023
#Create user, password and host

# script should be executed with sudo / root user

if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with sudo or root."
	exit 1
fi

#User should provide at least one argument as username

if [[ "${#}" -lt 1 ]]
then 
	echo "Usage: ${0} USER_NAME [Comment]....."
	echo "Create a user with name USER_NAME"
	exit 1
fi

#store 1st argument as username

USER_NAME="${1}"

#if user gives more than one argument , store it as a comment

shift
COMMENT="${@}"

#Gnerate Password



