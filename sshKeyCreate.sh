#!/bin/bash

#execute assim ./seu_script.sh nome_da_chave "seu_email@example.com" não utilize o sudo pois se não a chave será criada no root



if [ $# -ne 2 ]; then
    echo "Uso: $0 <nome_da_chave> <email>"
    exit 1
fi

nome_chave="$1"
email="$2"

echo "Criando chave"
ssh-keygen -t ed25519 -C "$email" -f "$HOME/.ssh/$nome_chave" 

echo "Iniciando o ssh-agent"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/"$nome_chave"

echo "Chave criada e adicionada ao ssh-agent."
echo "Agora adicione sua chave .pub ao GitHub ou GitLab."

