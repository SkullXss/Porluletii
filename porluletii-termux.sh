#!/bin/bash

# Banner
echo -e "\e[1;32m
  ____            _       _     _____ _ _
 |  _ \ ___  _ __| |_   _| | __|_   _| | |
 | |_) / _ \| '__| | | | | |/ _ \| | | | |
 |  __/ (_) | |  | | |_| | |  __/| | | | |
 |_|   \___/|_|  |_|\__,_|_|\___||_| |_|_|

\e[0m"

# Pergunta ao usuário
read -p "Deseja instalar estes arquivos? (Y/N): " choice

# Verifica a escolha do usuário
if [ "$choice" == "Y" ] || [ "$choice" == "y" ]; then
    # Atualizar pacotes
    pkg update -y

    # Fazer upgrade dos pacotes
    pkg upgrade -y

    # Instalar curl, wget, python, python2, python3, pip, proot-distro, nano, git
    pkg install curl wget python python2 python3 pip proot-distro nano git -y

    # Mensagem de instalação colorida
    echo -e "\e[1;34mInstalando os arquivos...\e[0m"

    # Adicionar mais instalações conforme necessário
    pkg install openssh -y
    # Adicione outras instalações conforme necessário

    # Mensagem de conclusão colorida
    echo -e "\e[1;32mArquivos instalados com sucesso!\e[0m"

else
    echo "Instalação cancelada."
fi