docker-predictionio
===================

Run [PredictionIO](http://prediction.io) inside Docker

1. Run ```build``` to build the image
2. Run ```shell``` to start the container
3. Once inside the container, run ```runsvdir-start&``` to start everything
4. The Dashboard is available on port 9000

Run [quickstart](http://docs.prediction.io/templates/recommendation/quickstart/)

1. Go to quickstartapp directory ```cd /quickstartapp```
2. Build and Train Engine ```./run.sh```
3. Deploy Engine ```cd MyRecommendation && pio deploy --ip 0.0.0.0&```
4. Your Engine will now listen on port 8000


Stawianie stepByStep 

Wchodzimy na ```dkr@glupdkr0.goldenline.pl```
```cd predictionCandidates```
copiowanie danych do uczenia się - scp data.json
Clonowanie repo ```git@github.com:GoldenLine/docker-predictionio-candidates.git```
```cd docker-predictionio-candidates```
```./build```
```Kopiowanie data.json do kontenera```
```./shell```  // wejście do kontenera lub ```docker exec -it <nazwa kontenera> bash```
```runsvdir-start&```
```pio app new universal-recommender --id 1 --access-key JX8mmC4KcLZvorxvGDLGC9Gpc5BtO6vrLy8a06o2pBbTj07ocw8T0mm8GnWJZ_L4```
```cd universal-recommender```
```pio app data-delete universal-recommender```
```pio build --clean```
```pio import --appid 1 --input /data.json```
```pio train -- --driver-memory 4G```
```pio deploy```
