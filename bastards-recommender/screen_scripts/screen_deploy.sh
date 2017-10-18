#!/bin/bash

TODAY=$(date +%Y%m%d)
TODAY_CMD_NAME="candidates_prediction_$TODAY"

#if ! screen -ls | grep -q $TODAY_CMD_NAME ; then
#        echo "Nie ma screena o nazwie $TODAY_CMD_NAME; TWORZENIE!";
#        /usr/bin/screen -d -m -S $TODAY_CMD_NAME
#fi

HOUR=$(date +%H%M)

echo "Uruchamiam deploy...";
echo "Screen: "$TODAY_CMD_NAME;
echo "Godzina: "$HOUR;
/usr/bin/screen -dm -S $TODAY_CMD_NAME /bin/sh -c "/universal-recommender/cron/engine_scripts/deploy.sh;"
