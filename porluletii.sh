#!/bin/bash

# Banner
echo -e "\e[1;32m
  ____            _       _     _____ _ _
 |  _ \ ___  _ __| |_   _| | __|_   _| | |
 | |_) / _ \| '__| | | | | |/ _ \| | | | |
 |  __/ (_) | |  | | |_| | |  __/| | | | |
 |_|   \___/|_|  |_|\__,_|_|\___||_| |_|_|

\e[0m"

# Exibir opções
echo "Escolha uma opção:"
echo "1: Kali Linux"
echo "2: Debian"
echo "3: Ubuntu"
echo "4: Parrot OS"
echo "5: BackBox"
echo "6: Fedora"
echo "7: CentOS"
echo "8: Arch Linux"
echo "9: BlackArch"
echo "10: Alpine"

# Pergunta ao usuário
read -p "Digite o número da opção desejada: " option

# Verifica a escolha do usuário e executa os comandos correspondentes
case $option in
    1)
        pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh && bash kali.sh
        ;;
    2)
        pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Debian/debian.sh && bash debian.sh
        ;;
    3)
        pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
        ;;
    4)
        pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Parrot/parrot.sh && bash parrot.sh
        ;;
    5)
        pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/BackBox/backbox.sh && bash backbox.sh
        ;;
    6)
        pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Fedora/fedora.sh && bash fedora.sh
        ;;
    7)
        pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/CentOS/centos.sh && bash centos.sh
        ;;
    8)
        pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Arch/armhf/arch.sh && bash arch.sh
        ;;
    9)
        pacman-key --init && pacman-key --populate archlinuxarm && pacman -Sy --noconfirm curl && curl -O https://blackarch.org/strap.sh && chmod +x strap.sh && ./strap.sh
        ;;
    10)
        apk add --no-cache curl && curl -O https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Alpine/alpine.sh && bash alpine.sh
        ;;
    *)
        echo "Opção inválida."
        ;;
esac