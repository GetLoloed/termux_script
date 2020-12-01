#!/bin/sh

# The packages i recommanded for a better experience.

if ["$1" = "packages"]
then
    termux_packages="
    vim
    zsh
    curl
    git
    wget
    python
    ctags
    gcc
    gdb
    make
    openssh
    nmap
    python-pip
    stow
    unzip
    valgrind
    "
    pkg update
    pkg upgrade

    pkg install $termux_packages

    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k




