#!/bin/bash

#
# Hilda is a program
# to install a desktop environment
# and place configuration files or back them up
# during the after and post installation process
# of unix systems.
#
clear
# Run as root

[[ $EUID -ne 0 ]] &&
	echo "Rode o programa em modo root" &&
	exit 1

#
# INSTALL THEMES & DOTFILES
#

# Getting absolute path
HILDA="$(dirname -- "${BASH_SOURCE[0]}")"
HILDA="$(cd -- "$HILDA" && pwd)"

# Gettind files
VIMRC=files/.vimrc
BASHRC=files/.bashrc
BASHALIAS=files/.bash_aliases
TMUXCONF=files/.tmux.conf

# Copy config files
cp -ri $VIMRC $HOME \
cp -ri $BASHRC $HOME \
cp -ri $BASHALIAS $HOME \
cp -ri $TMUXCONF $HOME

# Backup vim plugins
#if [  ]; then
#
#fi
	
#

# Remove old instalation
#

# Install vim Plug
curl -fLo /home/dricca/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Backup tmux plugins


# Remove old instalation


# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm /home/dricca/.tmux/plugins/tpms

#
# Install JSON & YAML interpreters for shell
#

# yq
wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq &&\
    chmod +x /usr/bin/yq
# jq
apt-get install jq

#
# Install ASDF version manager
#
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

#
# Install audio controllers
#
apt install \
	pulseaudio \
	alsa-utils \
	pavucontrol
#
# Install TWM and others packages
#
# apt install \
#
# Xorg                 :: Display server
#                       	xorg \
# i3wm                 :: Tiling window manager TWM
#                       	i3 --no-install-recommends \
# Picom	               :: Compositor for X
#                       	picom \
# Polybar              :: Tool for creating status bars
#                       	polybar \
# Lightdm              :: Display manager
#                       	lightdm  \
# Slick-greeter        :: GUI that prompts the user for credentials
#                       	slick-greeter \
# Lightdm-settings     :: A configuration tool for the LightDM
#                       	lightdm-settings \
# Lxappearance         :: A desktop-independent theme switcher
#                       	lxappearance \
# Nitrogen             :: Desktop background browser and setter
#                       	nitrogen \
# Pcmanfm              :: File manager
#                       	pcmanfm \
# Imagemagic           :: CLI for manipulation of digital images
#                         imagemagick

#
# Inatall Nerdfonts
#
git clone https://github.com/ryanoasis/nerd-fonts.git \
	cd nerd-fonts \
	chmod +rwx install.sh \
	./install.sh

