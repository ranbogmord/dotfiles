#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$HOME/.gem/ruby/2.3.0/bin:$HOME/.npm-packages/bin:/opt/Mongoclient-linux-x64:/opt/wpscan:$PATH"
export EDITOR=vim
export VAGRANT_DEFAULT_PROVIDER="virtualbox"
export GOPATH="/www/go"
export PATH="$PATH:$GOPATH/bin"
export GOBIN="$GOPATH/bin"


[[ -f "~/.awscred"  ]] && source "~/.awscred"

# System
alias ll="ls -lah"
#alias .="ll"
#alias fuck='sudo !!'
alias bashrc="vim ~/.bashrc && source ~/.bashrc"
alias pacman="sudo pacman"
alias systemctl="sudo systemctl"
alias open="xdg-open"
alias dirsize="find . -maxdepth 1 -type d | xargs -n 1 du -sh"
alias vim-ide="vim -c 'NERDTree'";
alias devssl="openssl req -x509 -newkey rsa:2048 -keyout dev.key -out dev.crt -days 365 -nodes -subj '/C=SE/ST=Vastra Gotaland/L=Gothenburg/O=DEVCERT/OU=DEV'"
alias wwwcd="cd /www"
alias provideitcd="cd /www/provideit"

function md()
{
	mkdir -p "$1" && cd "$1"
}

export -f md

# Git
alias gs="git status"
alias ga="git add"
alias gaa="git add --all ."
alias gc="git commit"
alias gac="gaa && gc"
alias gp="git push"
alias gpo="git push -u origin HEAD"
#alias gcd="cd `git rev-parse --show-toplevel`"
alias remove-orig="find . -name "*.orig" | xargs rm"
function gcd { cd "$(git rev-parse --show-toplevel)"; }; export -f gcd;


# Vagrant
alias vu="vagrant up"
alias vh="vagrant halt"
alias vr="vagrant reload"
alias vdestroyr="vagrant destroy -f && vagrant up"
alias vs="vagrant ssh"
alias vus="vagrant up && vagrant ssh"
alias vrs="vagrant reload && vagrant ssh"

export NVM_DIR="/home/ranbogmord/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
PATH="/usr/local/heroku/bin:$PATH"

###-tns-completion-start-###
if [ -f /home/ranbogmord/.tnsrc ]; then 
    source /home/ranbogmord/.tnsrc 
fi
###-tns-completion-end-###
