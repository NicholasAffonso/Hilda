#
# ALIAS
#

# list directories
alias lld='ls -lUd */'

# what most people want from od (hexdump)
alias hd='od -Ax -tx1z -v'


# canonicalize path (including resolving symlinks)
alias realpath='readlink -f'

## Colorize the ls output ##
alias ls='ls --color=auto'

#list hidden files
alias la='ls -a'        

# Extra info compared to "l"
alias ll='ls -lhrta --color=auto'


# list files
alias l='ls --color=auto'

## Show hidden files ##
alias l.='ls -d .* --color=auto'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## Start calculator with math support ##
alias bc='bc -l'

## Generate sha1 digest ##
alias sha1='openssl sha1'

# By combining -p you can create a long list files together
# like "office/client/raj/date/day"
# with -v to verbose a printed message for each file.
alias mkdir='mkdir -pv'

## install  colordiff package :) ##
alias diff='colordiff'

## Make mount command output pretty and human readable format ##
alias mount='mount |column -t'

## handy short cuts ##
alias h='history'
alias j='jobs -l'

## Create a new set of commands ##
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

## Set vim as default ##
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

## Control output of networking tool called ping ##

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

## Show open ports ##
alias ports='netstat -tulanp'

## Wakeup sleeping servers ##

## replace mac with your actual server mac address #
alias wakeupnas01='/usr/bin/wakeonlan 00:11:32:11:15:FC'
alias wakeupnas02='/usr/bin/wakeonlan 00:11:32:11:15:FD'
alias wakeupnas03='/usr/bin/wakeonlan 00:11:32:11:15:FE'

## Control firewall (iptables) output ##

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'

# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

## Debug web server / cdn problems with curl ##

# get web server headers #
alias header='curl -I'

# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'

## Add safety nets  ##

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

## Update Debian Linux server ##

# distro specific  - Debian / Ubuntu and friends #
# install with apt-get
alias apt-get="sudo apt-get"
alias updatey="sudo apt-get --yes"

# update on one command
alias update='sudo apt-get update -y && sudo apt-get upgrade -y'

# become root #
alias root='sudo -i'
alias su='sudo -i'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

Control web servers

## also pass it via sudo so whoever is admin can reload it without calling you ##
alias nginxreload='sudo /usr/local/nginx/sbin/nginx -s reload'
alias nginxtest='sudo /usr/local/nginx/sbin/nginx -t'
alias lightyload='sudo /etc/init.d/lighttpd reload'
alias lightytest='sudo /usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf -t'
alias httpdreload='sudo /usr/sbin/apachectl -k graceful'
alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'
alias grep='GREP_COLOR="1;33;40" LANG=C grep --color=auto'

alias minicom='minicom -c on' # enable colour
alias cal='cal -3' #show 3 months by default
alias units='units -t' # terse mode
alias diff='LC_ALL=C TZ=GMT0 diff -Naur' # normalise diffs for distribution
alias lynx='lynx -force_html -width=$COLUMNS' # best settings for viewing HTML
alias links='links -force-html' # need to enable colour in config menu manually
alias xterm='xterm -fb "" -bg black -fg gray -fa "Sans Mono" -fs 9 +sb -sl 3000 -g 80x50+1+1'
alias please='sudo env PATH=$PATH' 
alias sudo='sudo env PATH=$PATH' # work around sudo built --with-secure-path (ubuntu)
alias vim='export TERM=xterm; vim -p -X' # don't try to contact xserver (which can hang on network issues)
#alias gdb='gdb -tui -quiet' # enable the text window interface if possible
alias head='head -n $((${LINES:-12}-2))' # as many as possible without scrolling
alias tail='tail -n $((${LINES:-12}-2)) -s.1' # Likewise, also more responsive -f

alias amek='make'
alias amke='make'

## Alias into our backup stuff ##

# if cron fails or if you want backup on demand just run these commands #
# again pass it via sudo so whoever is in admin group can start the job #
# Backup scripts #
alias backup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type local --taget /raid1/backups'
alias nasbackup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type nas --target nas01'
alias s3backup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type nas --target nas01 --auth /home/scripts/admin/.authdata/amazon.keys'
alias rsnapshothourly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys --config /home/scripts/admin/scripts/backup/config/adsl.conf'
alias rsnapshotdaily='sudo  /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
alias rsnapshotweekly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
alias rsnapshotmonthly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
alias amazonbackup=s3backup

## Desktop specific – play avi/mp3 files on demand ##

## play video files in a current directory ##
# cd ~/Download/movie-name
# playavi or vlc
alias playavi='mplayer *.avi'
alias vlc='vlc *.avi'

# play all music files from the current directory #
alias playwave='for i in *.wav; do mplayer "$i"; done'
alias playogg='for i in *.ogg; do mplayer "$i"; done'
alias playmp3='for i in *.mp3; do mplayer "$i"; done'

# play files from nas devices #
alias nplaywave='for i in /nas/multimedia/wave/*.wav; do mplayer "$i"; done'
alias nplayogg='for i in /nas/multimedia/ogg/*.ogg; do mplayer "$i"; done'
alias nplaymp3='for i in /nas/multimedia/mp3/*.mp3; do mplayer "$i"; done'

# shuffle mp3/ogg etc by default #
alias music='mplayer --shuffle *'

## Set default interfaces for sys admin related commands ##

## All of our servers eth1 is connected to the Internets via vlan / router etc  ##
alias dnstop='dnstop -l 5  eth1'
alias vnstat='vnstat -i eth1'
alias iftop='iftop -i eth1'
alias tcpdump='tcpdump -i eth1'
alias ethtool='ethtool eth1'

# work on wlan0 by default #
# Only useful for laptop as all servers are without wireless interface
alias iwconfig='iwconfig wlan0'

## Get system memory, cpu usage, and gpu memory info quickly ##
## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

## older system use /proc/cpuinfo ##
alias cpuinfo='less /proc/cpuinfo'

## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

## Control Home Router ##

# Reboot my home Linksys WAG160N / WAG54 / WAG320 / WAG120N Router / Gateway from *nix.
alias rebootlinksys="curl -u 'admin:my-super-password' 'http://192.168.1.2/setup.cgi?todo=reboot'"

# Reboot tomato based Asus NT16 wireless bridge
alias reboottomato="ssh admin@192.168.1.1 /sbin/reboot"

## Resume wget by default ##

## this one saved by butt so many times ##
alias wget='wget -c'

##  Use different browser for testing website ##
## this one saved by butt so many times ##
alias ff4='/opt/firefox4/firefox'
alias ff13='/opt/firefox13/firefox'
alias chrome='/opt/google/chrome/chrome'
alias opera='/opt/opera/opera'

# default ff
alias ff=ff13

# my default browser
alias browser=chrome

## Disk usage ##

# Print file or folder sizes in human readable 
alias df='df -H'
# Print total size
alias du='du -ch'