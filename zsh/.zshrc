# Path to your oh-my-zsh installation.
  export ZSH=/home/ranbogmord/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fletcherm"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(openssl git vim npm sudo)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc && source ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#export PS1="%n@%m %d $ "
#
#export PS1="%{$fg_no_bold[cyan]%}%n%{$fg_no_bold[magenta]%}•%{$fg_no_bold[green]%}%3~$(git_prompt_info)%{$reset_color%} $ "
#export PS1="\e[36m%n\e[35m-\e[32m%3~\e[0m"

#source ~/.dotfiles/zsh/zsh-git-prompt/zshrc.sh
#source ~/.oh-my-zsh/plugins/kube-ps1/kube-ps1.zsh
# precmd() {
        #PROMPT="%{$fg[cyan]%}%n%{$fg[magenta]%} | %{$fg[green]%}%3~%{$reset_color%} $(git_super_status) » "
#        PROMPT="» %{$fg[green]%}%3~%{$reset_color%} $(git_super_status) » "
#}

#export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault-pass

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)" &>/dev/null
fi

function chpwd {
    [[ -f "`pwd`/.direnv" ]] && source "`pwd`/.direnv"
    echo "`pwd`" > /tmp/.curdir
}

[[ -f /tmp/.curdir ]] && cd "`cat /tmp/.curdir`"

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

source ~/.zsh-alias
source /home/ranbogmord/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


###-tns-completion-start-###
if [ -f /home/ranbogmord/.tnsrc ]; then 
    source /home/ranbogmord/.tnsrc 
fi
###-tns-completion-end-###
