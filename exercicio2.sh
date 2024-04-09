#!/bin/bash

#Escrever um script que recebe uma entrada do usuário e verifica se o que o usuário digitou é um usuário cadastrado no sistema

USERS=$(ls /home) #pega a lista dos usuários

echo -n "Escreva um login: " 
read LOGIN #lê a entrada do usuário

FOUND=false #variável para o laço for

for user in $USERS; do #laço for para achar o usuário, se ele existir
    if [ "$user" = "$LOGIN" ]; then
        FOUND=true
        break
    fi
done

if $FOUND; then
    echo "O login que você digitou É um usuário cadastrado no sistema"
else
    echo "O login que você digitou NÃO É um usuário cadastrado no sistema"
fi
