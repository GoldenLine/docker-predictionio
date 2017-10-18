#!/bin/bash

cd /universal-recommender;

pio import --appid 1 --input /data.json;

pio train -- --driver-memory 12G;

pio deploy;
