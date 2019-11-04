#!/bin/sh

service=httpd

action=0
currStatus=0
sStatus="%{F#f00}%{F-}"

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 )); then
    currStatus=1
fi

toggle() {
    action=$(((action + 1) % 2))
}
trap "toggle" USR1

echo "woops"

while true; do
    if [ $action -eq 0 ]; then
        echo "nothing"
    else
        echo "do it"
    fi
    if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 )); then
        currStatus=1
        sStatus="%{F#0f0}%{F-}"
    fi
    echo "$sStatus"
    sleep 1 &
    wait
done
