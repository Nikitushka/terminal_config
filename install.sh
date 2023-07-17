#!/bin/bash

echo "[*] Updating apt store"
sleep 2
sudo apt update -y

echo "[*] Checking whether zsh, tmux, and git are installed (the dirtiest way >:D)"
sleep 2
sudo apt install zsh tmux git

echo "[*] Installing dependencies..."
sleep 1
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && cp keter.zsh-theme ~/.oh-my-zsh/themes/keter.zsh-theme
chsh -s /usr/bin/zsh
git clone https://github.com/cjcase/tmux-config && bash tmux-config/install.sh

echo "[+] Done! All that's left is to add 'keter' as theme in .zshrc."
