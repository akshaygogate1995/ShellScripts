#!/bin/bash


add_user()

{

USER=$1
PASS=$2

useradd -m -p $PASS $USER && echo "Successfully added the User "

}


add_user Akshay test@123

