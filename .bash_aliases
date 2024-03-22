alias wol-yoki="wol 18:c0:4d:da:8c:77"

##########################
# pacman
##########################

alias pacmanz="pacman -Slq | fzf --multi --preview 'pacman -Si {1}'"
alias pacmanzi="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}'"

#########################
# wifi
#########################
alias wifi_on="sudo iwctl adapter phy0 set-property Powered on"
alias wifi_off="sudo iwctl adapter phy0 set-property Powered off"
alias wifi_scan="sudo iwctl station wlan0 scan"
alias wifi_list="sudo iwctl station wlan0 get-networks"
alias wifi_connect="sudo iwctl station wlan0 connect"
alias wifi_status="sudo iwctl station wlan0 show"
alias wifi_disconnect="sudo iwctl station wlan0 disconnect"

#########################
# nordvpn
#########################
alias nord_login="nordvpn login --token $(cat ~/.config/nordvpn.token)"
alias nord_logout="nordvpn logout"
alias nord_lynx="nordvpn set technology nordlynx"
alias nord_countries="nordvpn countries"
alias nord_cities="nordvpn cities"
alias nord_connect="nordvpn connect"
alias nord_disconnect="nordvpn disconnect"
alias nord_kill_on="nordvpn set killswitch enabled"
alias nord_kill_off="nordvpn set killswitch disabled"



##########################
# ssh
##########################
alias ssh-add="/usr/bin/ssh-add -t 1W"
alias xfreerdp="xfreerdp /h:1024 /w:1640"
alias ssh-remove-host="/usr/bin/ssh-keygen -f ~/.ssh/known_hosts -R"
ssh-scan-host() {
    ssh-keyscan $1 >> ~/.ssh/known_hosts
}

# /usr/bin/git init --bare $HOME/dev/dotfiles
# dotfiles config --local status.showUntrackedFiles no
# /usr/bin/git clone --bare git@github.com:jubeaz/dotfiles.git $HOME/dev/dotfiles
# /usr/bin/git --git-dir=$HOME/dev/dotfiles --work-tree=$HOME checkout
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
##########################
# Crypto
##########################
alias openssl_enc="/usr/bin/openssl enc -e --base64 -salt -pbkdf2 -aes-256-cbc"
alias openssl_dec="/usr/bin/openssl enc -d --base64 -salt -pbkdf2 -aes-256-cbc"
# sudo /usr/bin/cryptsetup -y -v luksFormat /dev/sdc1
# sudo /usr/bin/cryptsetup luksOpen /dev/sdc1 mykey
# sudo /usr/bin/mkfs.ext4 /dev/mapper/mykey
alias crypt-open="sudo /usr/bin/cryptsetup open" # crypt-open /dev/sdc1  mykey
alias crypt-close="sudo /usr/bin/cryptsetup close" # crypt-close mykey


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


##########################
# BACKUP
##########################

#alias rsync-dry-full-home="sudo /usr/bin/rsync --archive --delete --dry-run $HOME"

#alias blue_up="VAGRANT_CWD=/etc/ansible/vagrants/blue vagrant up"
#alias blue_stop="VAGRANT_CWD=/etc/ansible/vagrants/blue vagrant halt blue"
#alias blue_destroy="VAGRANT_CWD=/etc/ansible/vagrants/blue vagrant destroy blue"
#alias blue_status="VAGRANT_CWD=/etc/ansible/vagrants/blue vagrant status blue"
#alias blue_ansible="ansible-playbook -i /etc/ansible/inventory/wayland.yml /etc/ansible/playbooks/wayland.yml"
#alias blue_rdp="xfreerdp /cert:ignore /u:vagrant /p:vagrant  /v:192.168.56.13 /h:1024 /w:1640 /drive:share,./ +drives"
#alias blue_winrm="evil-winrm -i 192.168.56.13 -u vagrant -p vagrant"

alias red_up="VAGRANT_CWD=/etc/ansible/vagrants/red vagrant up"
alias red_halt="VAGRANT_CWD=/etc/ansible/vagrants/red vagrant halt red"
alias red_destroy="VAGRANT_CWD=/etc/ansible/vagrants/red vagrant destroy red"
alias red_status="VAGRANT_CWD=/etc/ansible/vagrants/red vagrant status red"
alias red_ansible="ansible-playbook -i /etc/ansible/lab_inventories/red/red.yml /etc/ansible/lab_playbooks/lab.yml"

alias red_dc_rdp="xfreerdp /cert:ignore /u:jubeaz@hass.local /p:jubeaz  /v:172.16.0.1 /h:1024 /w:1640 /drive:share,./ +drives"
alias red_srv_rdp="xfreerdp /cert:ignore /u:jubeaz@haas.local /p:jubeaz /v:172.26.0.10 /h:1024 /w:1640 /drive:share,./ +drives"
alias red_ws_rdp="xfreerdp /cert:ignore /u:jubeaz@haas.local /p:jubeaz  /v:172.16.0.20 /h:1024 /w:1640 /drive:share,./ +drives"
alias red_dc_winrm="evil-winrm -i 172.16..0.1 -u jubeaz@haas.local -p jubeaz"
alias red_srv_winrm="evil-winrm -i 172.16.0.10 -u jubeaz@haas.local -p jubeaz"
alias red_ws_winrm="evil-winrm -i 172.6.0.20 -u jubeaz@haas.local -p jubeaz"

alias netrunner_ansible="ansible-playbook -i /etc/ansible/lab_inventories/netrunner/netrunner.yml /etc/ansible/lab_playbooks/lab.yml"
alias haas_ansible="ansible-playbook -i /etc/ansible/lab_inventories/haas/haas.yml /etc/ansible/lab_playbooks/lab.yml"



##########################
# routage
##########################

# $1 in interface eth0
# $2 out interface tun0
# $3 nat source cidr 192.168.1.0/24
_add_routage() {
    sudo iptables -A FORWARD -i $1 -o $2 -j ACCEPT
    sudo iptables -A FORWARD -i $2 -o $1 -m state --state RELATED,ESTABLISHED -j ACCEPT
    sudo iptables -t nat -A POSTROUTING -j MASQUERADE -s $3 -o $2
    sudo ufw default allow FORWARD
}


