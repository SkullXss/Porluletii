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
read -p "Deseja instalar ferramentas e clonar repositórios? (Y/N): " choice

# Verifica a escolha do usuário
if [ "$choice" == "Y" ] || [ "$choice" == "y" ]; then
    # Atualizar pacotes
    pkg update -y

    # Fazer upgrade dos pacotes
    pkg upgrade -y

    # Instalar ferramentas como nmap, ping, host, wget, curl, git, tur-repo, zphisher, etc.
    pkg install nmap iputils-ping dnsutils wget curl git tur-repo zphisher python3 python-pip php openssh -y

    # Mensagem de instalação colorida
    echo -e "\e[1;34mInstalando as ferramentas...\e[0m"

    # Adicionar mais instalações conforme necessário
    # pkg install <nome_da_ferramenta> -y
    # Adicione outras ferramentas conforme necessário

    # Clonar repositórios
    git clone https://github.com/SkullXss/ByteIp2.0.git
    git clone https://github.com/SkullXss/SkullPish.git
    git clone https://github.com/SkullXss/FearScan4.0.git
    git clone https://github.com/KasRoudra/PyPhisher.git

    # Mensagem de conclusão colorida
    echo -e "\e[1;32mFerramentas e repositórios clonados com sucesso!\e[0m"

else
    echo "Instalação cancelada."
fi