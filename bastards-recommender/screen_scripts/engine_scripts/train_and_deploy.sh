#/bin/bash

/bin/bash -c "cd /universal-recommender && pio train -- --driver-memory 12G && pio deploy"
