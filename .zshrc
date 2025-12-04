A=$(($(date +%s%N)/1000000))

autoload -Uz compinit && compinit
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Makefile completion
zstyle ':completion:*:make:*:targets' call-command true
zstyle ':completion:*:*:make:*' tag-order 'targets'

#binding vi
#bindkey -v
#history
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space


#define terminal
TERMINAL=kitty


#alias
alias ls='ls --color'
alias l='ls --color'
alias ll='ls --color -lah'
alias gss='git status'
alias gcm='git commit -m'
alias ga='git add'
alias gaa='git add * ; gss'
alias gsl='git log --format=format:%h\ :\ %cd\ :\ %s --date=short'

alias neofetch='fastfetch -c neofetch'
alias shutdown='shutdown now'
alias tree='tree -C'
alias bat='bat --pager less'
alias dc='docker compose'
alias d='docker'
alias de='docker exec'
alias dce= 'docker compose exec'

export PAGER='nvim +Man!'
alias pager="$(echo $PAGER)"
export EDITOR='nvim'
export BROWSER='firefox'

command_not_found_handler() {
    cowsay -r "zsh: command not found: $@"
    return 127
}



PATH=$PATH:/usr/sbin
export PATH=$HOME/.local/bin:$PATH:$HOME/mybin/

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

PS1="%d\>"
set -o vi

export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share/applications/

B=$(($(date +%s%N)/1000000))
echo "Startup time $(($B-$A)) milli"

# **** LISAAC-OMEGA TOOLS ****
export PATH="/home/gaetan/Programming/lisaac/bin:/home/gaetan/Programming/lisaac/elix:$PATH"
