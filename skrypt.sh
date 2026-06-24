#!/bin/bash

if [ "$1" = "--date" ]; then
date

elif [ "$1" = "--logs" ]; then
count=${2:-100}
for i in $(seq 1 $count); do
echo "Nazwa pliku: log${i}.txt, Skrypt: skrypt.sh, Data: $(date)" > "log${i}.txt"
done
echo "Utworzono $count plików"

elif [ "$1" = "--help" ]; then
echo "--date wyświetla datę"
echo "--logs tworzy pliki log"
echo "--help wyświetla pomoc"

fi