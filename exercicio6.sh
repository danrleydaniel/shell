#!/bin/bash

#Recebe como parâmetro um diretório e mostra todos os arquivos daquele diretório em lista numérica e em maiúscula

COUNT=1
FILES=$(ls -p $1 | grep -v /)

for line in $FILES; do
    echo -n $COUNT
    echo -n ". "
    echo $line | tr '[:lower:]' '[:upper:]'
    COUNT=$((COUNT-1))
done
