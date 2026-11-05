#!/bin/bash

CURRENT_YEAR=2026
read -p "Enter your year of birth: " -N 4 BIRTH_YEAR

AGE=$((CURRENT_YEAR - BIRTH_YEAR))

echo ""
echo "Текущий год: $CURRENT_YEAR"
echo "Ваш примерный возраст: $AGE"
