#!/bin/bash
if [ "$#" -ne 5 ]
then 
    echo "Please provide 5 paramaters"
    echo "start_IP end_IP hostname datacenter logfile"
    echo "e.g. 210 212 nym1 aeropsike-cl2 aerospike.log-20160910.gz"
    exit 0
fi

LOG_D="$(pwd)"

if !  [ -d "$LOG_D" ]
then
    mkdir -p "$LOG_D" 
fi

echo "Copying logs to: $LOG_D"

for i in $(seq -w $1 $2); do
    scp "$3"-"$i"."$4".placeiq.net:/var/log/aerospike/$5 $LOG_D/$5-$i
done
