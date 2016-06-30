#!/bin/bash

# Change this to set file ouput
OUTFILE=pingresults.txt

# IP/FQDN of host is first and only argument
HOST="$1"

echo "Begin - $(date)"  > $OUTFILE
while ping -c1 $HOST &>/dev/null; do
	sleep 1
done
echo "End - $(date)" >> $OUTFILE
exit
