#!/bin/bash

awk '$2 > 80 {print $1}' students.txt
echo ''
awk '$2 < 70 {print $1}' students.txt
echo ''
awk 'NR > 1 {next} {print $0}' students.txt
