#!/bin/bash
#Escrever um script que mostra os usuários cadastrados no sistema em ordem alfabética

USERS=$(ls /home) #salva o nome dos usuários na variável USERS

QUANT_USERS=$(ls -l /home | grep "^d" | wc -l) #pegando a quantidade de usuários

echo -e $USERS | cut -d ' ' -f 1-$QUANT_USERS | sort #exibindo os usuários em ordem alfabética

