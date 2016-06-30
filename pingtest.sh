#!/bin/bash

OUTFILE=pingresults.txt
HOST="$1"

echo "Begin - $(date)"  > $OUTFILE
while ping -c1 $HOST &>/dev/null; do
	sleep 1
done
echo "End - $(date)" >> $OUTFILE
exit
