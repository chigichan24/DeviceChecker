#!/bin/sh
host="*.*.*.*"
bc="*.*.*.255"
if ping -c 4 ${bc} | arp -a | grep ${host}
then
    for i in {1..10}
    do
        echo -e '\a'
        sleep 0.5s
    done
    echo "FOUND"
else
    echo "NOT FOUND"
fi
