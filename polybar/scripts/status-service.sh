#!/bin/sh

service=$1;
icon=$2;

result="%{F#f00}$icon%{F-}";

check=$(pgrep $service | wc -l);
if ["$check" -eq 1];
then
    result="%{F#0f0}$icon%{F-}";
fi

echo "$result";

