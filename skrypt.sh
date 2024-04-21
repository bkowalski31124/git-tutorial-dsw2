#!/bin/bash

dzisiejsza_data=$(date +"%d-%m-%Y")
echo "Dzisiejsza data: $dzisiejsza_data"

for ((i=1; i<=100; i++))
do
	filename="log${i}.txt"
	touch "$filename"
	echo "$filename" >> "$filename"
	echo "$(basename "$0")" >> "$filename"
        echo "$dzisiejsza_data" >> "$filename"
done

