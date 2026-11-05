#!/bin/bash

for i in {1..20}; do
    if [ $((i)) -eq 15 ]; then
        break
    elif [ $((i % 2)) -eq 1 ]; then
        echo "$i"
    else
        continue
    fi
done
