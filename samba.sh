 #!/bin/bash

echo Instalando samba...

if ! apt-get install samba gnome-system-tools nautilus-share
then
    echo "N�o foi poss�vel instalar o pacote samba"
    exit 1
fi
echo "Instala��o do samba finalizada"

if ! gpasswd -a xubuntu sambashare
then
    echo "N�o foi poss�vel add user sambashare"
    exit 1
fi
echo "add user sambashare finalizado"


if ! smbpasswd -a xubuntu
then
    echo "N�o foi poss�vel add smb pass"
    exit 1
fi
echo "add smb pass finalizado"