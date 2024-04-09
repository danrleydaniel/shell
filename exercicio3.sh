#!/bin/bash
#recebe o nome de um processo e retorna seu PID

PROCESSES=$(ps -aux) #pegando a lista de processos 
echo "$PROCESSES" | while read -r line; do #lendo cada linha do output de "ps -aux"
    echo "$line" | grep -q "$1" #vendo se na linha há um processo com o nome passado pelo usuário
    if [ $? -eq 0 ]; then
        echo "$line" | awk '{print $2}' #imprimindo a coluna 2 (a coluna do PID no ps), com o awk
    fi
done
