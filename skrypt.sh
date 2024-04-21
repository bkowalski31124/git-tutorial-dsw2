#!/bin/bash

function help
{
        echo "-h, --help,  Jeżeli potrzebujesz pomocy"
        echo "-l, --logs, Zapis logów"
        echo "-d, --date, Dzisiejsza data"
        echo "--init, Klonuje repozytorium do katalogu"
}


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

case "$1" in
	--help | -h)
		help ;;
	--logs | -l)
	echo "Dostęp do logów" ;;
	--date | -d)
	echo "Dzisiejsza data" ;;
	--init)
	echo "Klonowanie repozytorium"
	git clone https://github.com/bkowalski31124/git-tutorial-dsw2.git klon_repo
	export PATH="$PATH:$PWD/klon_repo" ;;
	*)
esac


