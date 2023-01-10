#!/usr/bin/env bash

#
# Hilda is a program
# to install a desktop environment
# and place configuration files or back them up
# during the after and post installation process
# of unix systems.
#

clear
# Run as root

if [ "$EUID" -ne 0 ]; then
	echo "Please run as root"
	exit
fi

# Getting absolute path

HILDA=$(realpath -s "$0")
HILDA_PATH=$(dirname "$HILDA")
printf "Caminho real do programa HILDA\n$HILDA\n\n\n"
printf "Caminho absoluto HILDA_PATH\n$HILDA_PATH\n\n\n"

# Getting dotfiles
declare -a DOTFILES=$(ls -f $HILDA_PATH/files | awk '{print ($NF)}' | awk 'NR>2') 
printf "Conteúdo da variável DOTFILES:\n"

for i in "${DOTFILES[@]}" 
do
	printf "${i}"
done

# Getting users

printf "\n\n\nOk\n"

exit 0
