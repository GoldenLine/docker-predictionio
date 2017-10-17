!/bin/bash

TODAY=$(date +%Y%m%d)
TODAY_CMD_NAME="candidates_prediction_$TODAY"
CONTAINER_NAME="pio_v0.10_project_candidates"

if ! screen -ls | grep -q $TODAY_CMD_NAME ; then
        echo "Nie ma screena o nazwie $TODAY_CMD_NAME; POTĘŻNE TWORZENIE!";
        /usr/bin/screen -d -m -S $TODAY_CMD_NAME
fi

HOUR=$(date +%H%M)

# do debugowania - wypluwa komendę screen'a
# echo "/usr/bin/screen -S $TODAY_CMD_NAME -X screen -t $HOUR -X script -c  'docker exec -it $CONTAINER_NAME script /dev/null -c \"htop\"'"
echo "Rozpoczynam trenowanie...";
echo "Screen: "$TODAY_CMD_NAME;
echo "Godzina: "$HOUR;
echo "Nazwa kontenera: "$CONTAINER_NAME;
/bin/bash -c "/usr/bin/screen -S $TODAY_CMD_NAME -X screen -t $HOUR -X script -c  'docker exec -it $CONTAINER_NAME script /dev/null -c \"cd /universal-recommender && pio train -- --driver-memory 12G && pio deploy\"'"
