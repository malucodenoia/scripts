 #!/bin/bash

echo Instalando samba...

if ! apt-get install samba gnome-system-tools nautilus-share
then
    echo "Não foi possível instalar o pacote samba"
    exit 1
fi
echo "Instalação do samba finalizada"

if ! gpasswd -a xubuntu sambashare
then
    echo "Não foi possível add user sambashare"
    exit 1
fi
echo "add user sambashare finalizado"


if ! smbpasswd -a xubuntu
then
    echo "Não foi possível add smb pass"
    exit 1
fi
echo "add smb pass finalizado"