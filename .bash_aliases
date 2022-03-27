alias ssh-add="/usr/bin/ssh-add -t 1W"
alias ssh-reset-host="/usr/bin/ssh-keygen -f ~/.ssh/known_hosts -R"
# /usr/bin/git init --bare $HOME/dev/dotfiles
# dotfiles config --local status.showUntrackedFiles no
alias dotfiles="/usr/bin/git --git-dir=$HOME/dev/dotfiles --work-tree=$HOME"
##########################
# Crypto
##########################
alias openssl_enc="/usr/bin/openssl enc -e --base64 -salt -pbkdf2 -aes-256-cbc"
alias openssl_dec="/usr/bin/openssl enc -d --base64 -salt -pbkdf2 -aes-256-cbc"
#alias cryptr-open="sudo /usr/bin/cryptsetup open" # crypt-open /dev/sdc1  mykey
#alias crypt-close="sudo /usr/bin/cyptsetup close" # crypt-close mykey
#alias crypt-format="sudo /usr/bin/cryptsetup -y -v luksFormat" # partition


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
