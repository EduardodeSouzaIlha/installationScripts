#!/bin/bash

# Verifica se o usuário é root
if [ "$(id -u)" != "0" ]; then
    echo "Este script deve ser executado como root" 1>&2
    exit 1
fi

echo "Instalando node"
apt-get update
apt install nodejs

echo "Instalando npm"
apt install npm

echo "instalando NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash



echo "Basta usar o NVM para trocar a versão do node 
$ nvm ls
$ nvm install vX.X.X
$ nvm use vX.X.X
"

