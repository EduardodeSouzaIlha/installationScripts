#!/bin/bash

# Verifica se o usuário é root
if [ "$(id -u)" != "0" ]; then
    echo "Este script deve ser executado como root" 1>&2
    exit 1
fi

# Verifica se foi fornecida a versão do OpenJDK como argumento
if [ $# -eq 0 ]; then
    openjdk_version="17"
else
    openjdk_version="$1"
fi

echo "Instalando o OpenJDK $openjdk_version e JRE"
apt-get update
apt install -y openjdk-"$openjdk_version"-jdk openjdk-"$openjdk_version"-jre


echo "
Você pode instalar o JENV
git clone https://github.com/jenv/jenv.git ~/.jenv"