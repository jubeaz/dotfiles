alias ssh-add="/usr/bin/ssh-add -t 1W"
alias ssh-reset-host="/usr/bin/ssh-keygen -f ~/.ssh/known_hosts -R"
# /usr/bin/git init --bare $HOME/dev/dotfiles
# dotfiles config --local status.showUntrackedFiles no
# /usr/bin/git clone --bare git@github.com:jubeaz/dotfiles.git $HOME/dev/dotfiles
# /usr/bin/git --git-dir=$HOME/dev/dotfiles --work-tree=$HOME checkout
alias dotfiles="/usr/bin/git --git-dir=$HOME/dev/dotfiles --work-tree=$HOME"
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

alias dirsearch="/usr/bin/dirsearch --config ~/.config/dirsearch/default.conf"
alias msfconsole="msfconsole -r ~/.msf4/msfconsole.rc"
alias xfreerdp="xfreerdp /h:1024 /w:1640"
alias nc="rlwrap nc"

alias gdb="gdb -q -ex init-pwndbg"
alias gdb-pwn="gdb -q -ex init-pwndbg"
alias gdb-gef="gdb -q -ex init-gef"

alias aslr-on="echo 2 | sudo tee /proc/sys/kernel/randomize_va_space"
alias aslr-off="echo 0 | sudo tee /proc/sys/kernel/randomize_va_space"
alias aslr-status="cat /proc/sys/kernel/randomize_va_space"
alias ssh-keyremove="ssh-keygen -f ~/.ssh/known_hosts -R "
#alias ssh-keyscan="ssh-keyscan $host >> ~/.ssh/known_hosts"

##
# pentesting commands
alias get-linpeas="curl -sLO https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh"


_nmap-std() {
    PORTS=$(sudo nmap --min-rate=1000 -T4 -p- "$1" | grep '^[0-9]' | cut -d'/' -f 1 | tr '\n' ',' | sed s/',$'//) ;
    echo "ports found: $PORTS";
    USER=$(whoami)
    sudo nmap -sVC -p$PORTS -oX nmap.xml "$1";
    sudo chown $USER nmap.xml
}

# $1 in interface eth0
# $2 out interface tun0
# $3 nat source cidr 192.168.1.0/24
_add_routage() {
    sudo iptables -A FORWARD -i $1 -o $2 -j ACCEPT
    sudo iptables -A FORWARD -i $2 -o $1 -m state --state RELATED,ESTABLISHED -j ACCEPT
    sudo iptables -t nat -A POSTROUTING -j MASQUERADE -s $3 -o $2
    sudo ufw default allow FORWARD
}
