### Git
PATH=/usr/local/bin/git:$PATH
export PATH

### Git Branch Name
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
PROMPT='%n@%m %c'\$vcs_info_msg_0_' %# '
precmd(){ vcs_info }

### Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

### alias
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias ls='ls -p -G'
alias la='ls -A'
alias ll='ls -l'
alias lla='ll -A'
alias g='git'
alias t='tmux'
alias dc='docker-compose'
alias ide="~/.ide.sh"

export PATH="/usr/local/opt/curl/bin:$PATH"

setopt no_beep
setopt hist_ignore_dups
setopt share_history
setopt inc_append_history

export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

