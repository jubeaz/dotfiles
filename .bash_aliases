alias wol-yoki="wol 18:c0:4d:da:8c:77"

##########################
# pacman
##########################

alias pacmanz="pacman -Slq | fzf --multi --preview 'pacman -Si {1}'"
alias pacmanzi="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}'"

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
alias red_stop="VAGRANT_CWD=/etc/ansible/vagrants/red vagrant halt red"
alias red_destroy="VAGRANT_CWD=/etc/ansible/vagrants/red vagrant destroy red"
alias red_status="VAGRANT_CWD=/etc/ansible/vagrants/red vagrant status red"
alias red_ansible="ansible-playbook /etc/ansible/playbooks/red.yml"
alias red_rdp="xfreerdp /cert:ignore /u:vagrant /p:vagrant  /v:192.168.56.14 /h:1024 /w:1640 /drive:share,./ +drives"
alias red_winrm="evil-winrm -i 192.168.56.14 -u vagrant -p vagrant"
alias netrunner_dc01="proxychains -q evil-winrm -i 192.168.56.10 -u administrator@weyland.local  -p 'Jubeaz12345+-'"
alias netrunner_dc02="proxychains -q evil-winrm -i 192.168.56.20 -u administrator@research.weyland.local  -p 'Jubeaz12345+-'"
alias netrunner_dc03="proxychains -q evil-winrm -i 192.168.56.30 -u administrator@haas.local  -p 'Jubeaz12345+-'"
alias netrunner_srv01="proxychains -q evil-winrm -i 192.168.56.11 -u administrator@weyland.local  -p 'Jubeaz12345+-'"


#alias netrunner_up="VAGRANT_CWD=/etc/ansible/vagrants/netrunner.local vagrant up"

#alias netrunner_save="VAGRANT_CWD=/etc/ansible/vagrants/netrunner.local vagrant snapshot save"
#alias netrunner_restore="VAGRANT_CWD=/etc/ansible/vagrants/netrunner.local vagrant snapshot restore"
#alias netrunner_snapshots="VAGRANT_CWD=/etc/ansible/vagrants/netrunner.local vagrant snapshot list"

#alias netrunner_stop="VAGRANT_CWD=/etc/ansible/vagrants/netrunner.local vagrant halt"
#alias netrunner_destroy="VAGRANT_CWD=/etc/ansible/vagrants/netrunner.local vagrant destroy"
#alias netrunner_status="VAGRANT_CWD=/etc/ansible/vagrants/netrunner.local vagrant status"

#alias netrunner_ansible="ansible-playbook -i /etc/ansible/lab_inventories/netrunner/netrunner.yml /etc/ansible/lab_playbooks/lab.yml"

alias netrunner_winrm_la="proxychains -q evil-winrm -u vagrant -p vagrant -i"
alias netrunner_rdp_la="xproxychains -q xfreerdp /cert:ignore /u:vagrant /p:vagrant /h:1024 /w:1640 /drive:share,./ +drives"

alias netrunner_rdp_wayland_da="xproxychains -q xfreerdp /cert:ignore /u:administrator@wayland.local /p:'Jubeaz12345!' /h:1024 /w:1640 /drive:share,./ +drives"
alias netrunner_rdp_research_da="xproxychains -q xfreerdp /cert:ignore /u:administrator@research.wayland.local /p:'Jubeaz12345!' /h:1024 /w:1640 /drive:share,./ +drives"
alias netrunner_rdp_haas_da="xproxychains -q freerdp /cert:ignore /u:administrator@research.wayland.local /p:'Jubeaz12345!' /h:1024 /w:1640 /drive:share,./ +drives"

alias netrunner_winrm_wayland_da="xproxychains -q evil-winrm -u administrator@wayland.local -p 'Jubeaz12345!' -i"
alias netrunner_winrm_research_da="xproxychains -q evil-winrm -u administrator@research.wayland.local -p 'Jubeaz12345!' -i"
alias netrunner_winrm_haas_da="xproxychains -q evil-winrm -u administrator@research.wayland.local -p 'Jubeaz12345!' -i"




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


