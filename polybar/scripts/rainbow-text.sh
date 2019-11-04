#!/bin/bash

text="Remember!";

red="FF0000";
green="00FF00";
blue="0000FF";
yellow="FFFF00";
white="FFFFFF",
orange="FFA500";
aqua="3399FF";
purple="FF007F";

colors=('red' 'green' 'blue' 'yellow' 'white' 'orange' 'aqua' 'purple');
rand=$(( (RANDOM % 7) ));
color=${colors[$rand]};
colorfull="%{F#${!color}}$text"

echo $colorfull
