#!/bin/bash

sudo pacman -Syu
sudo pacman -S figlet

clear

figlet updating system
sudo pacman -Syu
sudo pacman -S git

clear

figlet installing aur helper
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

clear

figlet installing programs
paru -S google-chrome visual-studio-bin ttf-croscore ttf-iosevka-nerd ttf-jetbrains-mono-nerd ttf-material-design-icons-extended amberol-git etcher-bin
sudo pacman -S vim curl wget telegram-desktop discord virtualbox virtualbox-host-modules-arch ark cmake dkms gwenview kdeconnect htop kvantum neofetch okular openvpn spectacle vlc zsh android-tools hplip

clear

figlet installing BlackArch repository
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
sudo ./strap.sh
sudo pacman -Syu

clear

figlet installing BlackArch tools
sudo pacman -S metasploit postgresql wireshark-qt fluxion arp-scan nikto nmap netdiscover wpscan

clear

figlet configuring zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/HQscorpio/My-zsh-config.git
cd My-zsh-config
mv zshrc .zshrc
mv .zshrc ~/

git clone https://github.com/HQscorpio/Kali-zsh-style.git
cd Kali-zsh-style
mv kali.zsh-theme ~/.oh-my-zsh/themes

clear
