#!/bin/bash
cd nucleotides_files
printf "%-20s %-7s %-7s %-7s %-7s\n" "Файл" "A" "T" "G" "C"

for file in *.fasta; do
    if [ ! -f "$file" ] || [ ! -s "$file" ]; then
        continue
    fi

    count_A=$(grep -v "^>" "$file" | tr -d '\n' | grep -o "A" | wc -l)
    count_T=$(grep -v "^>" "$file" | tr -d '\n' | grep -o "T" | wc -l)
    count_G=$(grep -v "^>" "$file" | tr -d '\n' | grep -o "G" | wc -l)
    count_C=$(grep -v "^>" "$file" | tr -d '\n' | grep -o "C" | wc -l)

    printf "%-16s %-7s %-7s %-7s %-7s\n" "$file" "$count_A" "$count_T" "$count_G" "$count_C"
done
cd ..
