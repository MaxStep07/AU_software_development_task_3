#!/bin/bash

read -p "Введите массу (в кг): " WEIGHT
read -p "Введите рост (в см): " HEIGHT

BMI=$(( WEIGHT * 10000 / (HEIGHT * HEIGHT) ))

echo "Ваш индекс массы тела (ИМТ): $BMI"
