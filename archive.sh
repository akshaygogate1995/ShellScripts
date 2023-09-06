#!/bin/bash

#Archive Older Files and Archive Larger Files and Compress those and move in archive folder

#Name - AKshay Gogate
#Date - 9th Sept 2023
#Revision : 001$

#Steps to Follow ->

#Provide the Path of Directory
#Check if the directory is present or not
#create archive folder if not present
#find all the files with size more than 20 MB
#Compress each file
#move the compressed files in archive folder
#make a cron job to run the script every day 

#variables
BASE=/home/ubuntu/shellscripts
DAYS=10
DEPTH=1
RUN=0

#Check if the Directory is present

if [ ! -d $BASE ]
then
	echo "Directory does not exist: $BASE"
	exit 1
fi

#Check if archive folder if not presen

if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#Check the list of files larger than 20MB

for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
	if [ $RUN -eq 0 ]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done

