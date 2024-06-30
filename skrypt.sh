#!/bin/bash

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    numfiles=${2:-100}
    for ((i=1; i<=num_files; i++)); do
        echo -e "Plik numer: $i\nNazwa skryptu: $0\nData: $(date)" > log$i.txt
    done
else
    echo "Użycie: $0 --date | --logs [liczba]"
fi
