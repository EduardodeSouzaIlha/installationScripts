#!/bin/bash

# Verifica se o usuário é root
if [ "$(id -u)" != "0" ]; then
    echo "Este script deve ser executado como root" 1>&2
    exit 1
fi

echo "Instalando o guake"
apt-get update
apt-get install guake

echo "Instalando zsh"
apt-get install zsh

echo "instalando Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Instalando Zsh-Autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Instalando neofetch"
apt install neofetch


echo "Agora torne o zsh o seu terminal defaul e vá até o .zshrc e add os pluggins 
plugins=(
  git
  zsh-autosuggestions
  docker
)"

