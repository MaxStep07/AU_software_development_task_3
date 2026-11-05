#!/bin/bash

awk -F "," '{print $2}' data.csv
echo ''
awk -F "," '$3 > 20 {print $2}' data.csv
echo ''
awk -F "," '{sum+=$3} END {print sum}' data.csv
