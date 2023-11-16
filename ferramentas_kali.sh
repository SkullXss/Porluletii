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
    apt update -y

    # Fazer upgrade dos pacotes
    apt upgrade -y

    # Instalação das ferramentas de pentesting e outras
    apt install nmap metasploit-framework wireshark aircrack-ng john gobuster hydra sqlmap dirsearch sublist3r gitleaks wpscan dirb beef-xss snort nikto aquatone wfuzz sn1per brutespray crackmapexec subfinder dnsrecon wafw00f sublist3r bbqsql fruitywifi radare2 jd-gui yersinia cr3d0v3r davtest lynis masscan joomscan shellnoob autorecon striker sniffjoke joomscan ghost-phisher ruler owasp-zsc wpscan xsser set w3af zaproxy raccoon metagoofil whatweb hydra hashcat curl wget python python2 python3 pip proot-distro nano git -y

    # Instalação do Nikto
    apt install nikto -y

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
