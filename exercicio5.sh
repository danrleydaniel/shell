#!/bin/bash

#A cada 60 minutos, verifica se o arquivo "home/user/savedate" existe e, se sim, imprime nele a data atual, a hora atual e quanto tempo a máquina está ligada.

while true; do
    
    if [ -e "/home/aluno/savedate" ]; then
        
        echo -n "Data atual: " >> /home/aluno/savedate 
        date +"%d/%m/%Y" >> /home/aluno/savedate
        echo -n "Hora atual: " >> /home/aluno/savedate
        date +"%H:%M" >> /home/aluno/savedate
        echo -n "A máquina está ligada a: " >> /home/aluno/savedate
        uptime -p | sed 's/up //' >> /home/aluno/savedate
    
    fi
    
    sleep 60
done
