#!/usr/bin/env bash

#
# Hilda is a tool to help you
# place your configuration files or back them up
# during the after and post installation process
# of unix system.
#

clear
# Run as root
[ "$EUID" -ne 0 ] && {
	echo "Please run as root"
	exit 1
}

#------| VARIAVEIS |

# Getting absolute path
HILDA=$(realpath -s "$0")
HILDA_PATH=$(dirname "$HILDA")
printf "Caminho real do programa HILDA\n$HILDA\n\n\n"
printf "Caminho absoluto HILDA_PATH\n$HILDA_PATH\n\n\n"

# Getting dotfiles
DOTFILES=$(ls -f $HILDA_PATH/files | awk '{print ($NF)}' | awk 'NR>2')
printf "Conteúdo da variável DOTFILES:\n"
for i in ${DOTFILES[@]}
do
	printf "${i}\n"
done

# Getting users
USERS_F=$(ls /home)
printf "\nLista de USUÁRIOS:\n"

for i in ${USERS_F[@]}
do
	printf "${i}\n"
done

# Root user path
ROOT=$(echo $HOME)
printf "$ROOT\n\n"

# Getting lists  
LISTS=$(ls $HILDA_PATH/lists)
printf "\nPacotes:\n\n"
for i in "${LISTS[@]}"
do
#	Definindo lista de pacotes em um array (not working)
	printf "$(cat $HILDA_PATH/lists/${i})\n\n"
	awk 'NR==[0.9],NR==[A.z]' $HILDA_PATH/lists/${i}
done

printf "\nLists:${#LISTS[@]}\n${LISTS[@]}\n\n"
printf "\nPackages:${#packageNames[@]}\n${packageNames[@]}\n\n"


#------| FIM VARIAVEIS |

# Backup files
backup(){
	[ ! -d ${HILDA_PATH/backup} ] && {
		mkdir $HILDA_PATH/backup
		printf "Pasta de backup criada"
		}
}

PS3="
Escolha uma opção: "
items=("Backup do sistema" "Atualizar dotfiles do Hilda")
while true; do
	select item in "${items[@]}" Sair; do
		case $REPLY in
			1) printf "\nOpção $REPLY: $item\n\n"; break;;
			2) printf "\nOpção $REPLY: $item\n\n"; break;;
			3) printf "\nSair\n\n"; break 2;;
			*) printf "\n\nO valor ($REPLY) não é válido\n\n"; break;
		esac
	done
done
# End
printf "Ok\n"

exit 0
