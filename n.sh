 #!/bin/bash

echo Atualizando repositórios..
if ! apt-get update
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

# note que $1 aqui será substituído pelo Bash pelo primeiro argumento passado em linha de comando
if ! apt-get install nautilus
then
    echo "Não foi possível instalar o pacote nautilus"
    exit 1
fi
echo "Instalação do nautilus finalizada"
