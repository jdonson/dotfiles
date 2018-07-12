#!/bin/sh
if [[ ${1} == "start" ]]; then
    osascript -e "display notification \"Time to focus! for ${2} minutes\" with title \"Focus\""
elif [[ ${1} == "stop" ]]; then
    say "Time is up"
    osascript -e "display notification \"Time is up! You focused for ${2} minutes\" with title \"Focus\""
fi
