#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspip ] && eval "$(SHELL=/bin/sh lesspipe)"

# set vi mode
set -o vi

#manage ssh-agent
if [ $(pgrep -u $USER ssh-agent | wc -l) -eq 0 ]; then
    ssh-agent -t 1W > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! $SSH_AUTH_SOCK ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='\u@\h:\w\$ '
fi

if [ -f ~/.bash_pentest ]; then
    . ~/.bash_pentest
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH=~/.local/bin:$PATH
ls_color_theme="molokai"
ls_color_file="$HOME/.ls_colors/ls_colors_${ls_color_theme}"

if [[ -f ${ls_color_file} ]]; then
    export LS_COLORS=$(cat ${ls_color_file})
fi

# set EDITOR
export EDITOR=vim
# set  proper
export XDG_CONFIG_HOME="$HOME/.config"
# set packer
export PACKER_HOME_DIR=$HOME/.packer
export PACKER_CONFIG_DIR=$XDG_CONFIG_HOME/packer.d
export PACKER_PLUGIN_PATH=$PACKER_HOME_DIR/plugins
#export PACKER_CACHE_DIR=$HOME/.cache/packer
export PACKER_CACHE_DIR=/var/lib/packer/cache
# set terraform
export TF_LOG=off
export TF_CLI_CONFIG_FILE="$HOME/.terraformrc"
