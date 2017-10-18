#!/bin/bash

runsvdir-start&;
sleep 20s;

pio app new universal-recommender --id 1; 

cd universal-recommender;

pio app data-delete universal-recommender;

pio build --clean;
