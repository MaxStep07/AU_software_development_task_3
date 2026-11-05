#!/bin/bash

df -h | awk 'NR > 1 {
    if ($5 > 90.0)
        print $1, $5, "WARNING: High usage!"
    else
        print $1, $5
}'

