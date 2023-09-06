#!/bin/bash

#to access the args

echo "First argument is $1"
echo "Second argument is $2"

echo "all the args are --- $@"
echo "Number of args are -- $#"

#for loop toaccess the values fromargs
for filename in $@
do
	echo "copying files - $filename"
done

