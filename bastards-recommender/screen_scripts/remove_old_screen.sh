#!/bin/bash
YESTERDAY=$(date +%Y%m%d -d "yesterday") #to nie dziala na macu, ale na debianie juz tak
YESTERDAY_CMD_NAME="candidates_prediction_$YESTERDAY"

echo $YESTERDAY

# usuwam wczorajszy screen
/usr/bin/screen -X -S $YESTERDAY_CMD_NAME quit
echo "usuwam wczorajszy screen"
