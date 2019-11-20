 #!/bin/bash

echo Atualizando reposit�rios..
if ! apt-get update
then
    echo "N�o foi poss�vel atualizar os reposit�rios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualiza��o feita com sucesso"

# note que $1 aqui ser� substitu�do pelo Bash pelo primeiro argumento passado em linha de comando
if ! apt-get install nautilus
then
    echo "N�o foi poss�vel instalar o pacote nautilus"
    exit 1
fi
echo "Instala��o do nautilus finalizada"
