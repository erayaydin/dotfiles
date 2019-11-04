#!/bin/sh

service=nginx

sStatus="%{F#f00}%{F-}"

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
    sStatus="%{F#0f0}%{F-}"
fi

echo "$sStatus"
