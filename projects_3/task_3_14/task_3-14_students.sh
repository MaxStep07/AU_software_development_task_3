#!/bin/bash

awk '{print $1}' students.txt
echo ''
awk '{print $2}' students.txt
echo ''
awk '{print NR, $1}' students.txt
