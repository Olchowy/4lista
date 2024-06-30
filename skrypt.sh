#!/bin/bash

showhelp() {
    echo "Dostępne opcje:"
    echo "--date, -d    Wyświetla dzisiejszą datę"
    echo "--logs, -l [liczba] Tworzy pliki log_x.txt z informacjami"
    echo "--help, -h    Wyświetla pomoc"
}

if [[ "$1" == "--date"  "$1" == "-d" ]]; then
    date
elif [[ "$1" == "--logs"  "$1" == "-l" ]]; then
    num_files=${2:-100}
    for ((i=1; i<=num_files; i++)); do
        echo -e "Plik numer: $i\nNazwa skryptu: $0\nData: $(date)" > log$i.txt
    done
elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
    show_help
else
    echo "Użycie: $0 --date | -d | --logs [liczba] | -l [liczba] | --help | -h"
fi
