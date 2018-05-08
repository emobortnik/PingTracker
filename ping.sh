#!/bin/bash

HOSTS1="8.8.8.8"
COUNT=10 


ping -c $COUNT $HOSTS1 
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
zenity --warning --text="<span size=\"xx-large\">WARNING</span>\n\n\n<b>$HOSTS1</b> is down" --title="SERVER DOWN" --ok-label="OKAY"
fi
