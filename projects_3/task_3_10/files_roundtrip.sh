#!/bin/bash

for i in {1..10}; do
    > "test$i.txt"
    echo "Make test$i.txt"
done

COUNT=1
while [ -f "test$COUNT.txt" ]; do
    rm "test$COUNT.txt"
    echo "Remove test$COUNT.txt"
    let COUNT+=1
done
