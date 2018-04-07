#!/bin/bash

cd ${HOME}/speedtest
speedtest --csv >> speedtest.csv

latency=$(ping -qc 10 8.8.8.8 | grep avg | awk -F/ '{print $5}')
timestamp=$(date +'%FT%T')

echo $timestamp,$latency >> latency.csv

gdrive sync upload . [ID-OF-GDRIVE-FOLDER]
