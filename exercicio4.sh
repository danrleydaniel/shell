#!/bin/bash

#Criar um script funcional com o seguinte menu:

echo "ESCOLHA UMA OPÇÃO: "
echo "1 - Exibir status das partições do sistema"
echo "2 - Exibir relação de usuários logados"
echo "3 - Exibir data/hora"
echo "4 - Sair"
echo -n "Informe sua opção: "
read OP

while [ "$OP" -ne 4 ];
do
    case "$OP" in
        1) df -h ;;
        2) who ;;
        3) date ;;
        4) exit 0 ;;
        *) echo "Opção inválida" ;;
    esac
    echo -n "
    Outra opção?: "
    read OP
done
