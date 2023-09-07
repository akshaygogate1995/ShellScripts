#!/bin/bash
# Author: Sarav AK - aksarav@middlewareinventory.com
# Date: 2 June 2019
#
#

# Get the UserName to use while logging into a Remote machine
echo "Enter the Remote UserName"
read rmtuname

echo "Enter the Remote Password"
read -s rmtpasswrd


# Read the ServerNames from Properties file
for server in `cat Serverlist.properties`
do
        # Printing the ServerName
        echo "Processing ServerName "$server

        # Write some Shell Script for Temporary Usage and Save in Current location
        cat << 'EOF' > ./TestScript.sh
        	#!/bin/bash
        	echo "My Name is $0"
        	echo "I am Running on `hostname`"
        	echo "The Date on the Current System is `date`"
        	echo "That's all!!. I am Exitting"
        	exit 0
EOF
	chmod a+x TestScript.sh

        # SCP - copy the script file from Current Directory to Remote Server 
        sshpass -p$rmtpasswrd scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no TestScript.sh $rmtuname@$server:/tmp/TestScript.sh
        
        # Take Rest for 5 Seconds
        sleep 5

        # SSH to remote Server  and Execute a Command [ Invoke the Script ] 
        sshpass -p$rmtpasswrd ssh   -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $rmtuname@$server "/tmp/TestScript.sh"
done