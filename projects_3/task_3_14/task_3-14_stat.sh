#!/bin/bash

awk '{sum+=$2} END {print sum}' students.txt
echo ''
awk '{sum += $2; n++} END {print sum/n}' students.txt
echo ''
awk 'NR==1{max=$2} $2>max{max=$2} END{print max}' students.txt
