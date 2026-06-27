#!/bin/bash

if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
date

elif [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
count=${2:-100}
for i in $(seq 1 $count); do
echo "Nazwa pliku: log${i}.txt, Skrypt: skrypt.sh, Data: $(date)" > "log${i}.txt"
done
echo "Utworzono $count plików"

elif [ "$1" = "--error" ] || [ "$1" = "-e" ]; then
count=${2:-100}
for i in $(seq 1 $count); do
mkdir -p "error${i}"
echo "Nazwa pliku: error${i}.txt, Skrypt: skrypt.sh, Data: $(date)" > "error${i}/error${i}.txt"
done
echo "Utworzono $count plików error"

elif [ "$1" = "--init" ]; then
git clone https://github.com/Vrhhd/Lab4 .
export PATH=$PATH:$(pwd)

elif [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
echo "--date, -d      wyświetla datę"
echo "--logs, -l [n]  tworzy n plików log"
echo "--error, -e [n] tworzy n plików error"
echo "--init          klonuje repozytorium"
echo "--help, -h      wyświetla pomoc"

fi  