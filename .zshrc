# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

#Prompt
#zinit ice depth=1;zinit light romkatv/powerlevel10k
# color highligt
zinit light zsh-users/zsh-syntax-highlighting

# COMPLETION
autoload -Uz compinit && compinit
zinit light zsh-users/zsh-completions
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode
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
alias neofetch='fastfetch -c neofetch'
alias shutdown='shutdown now'
alias tree='tree -C'
# alias docker='sudo docker'
alias bat='bat --pager less'
alias dc='docker compose'
alias d='docker'
alias de='docker exec'
alias dce= 'docker compose exec'

export PAGER='nvim +Man!'
alias pager="$(echo $PAGER)"
export EDITOR='nvim'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH=$PATH:/usr/sbin
export PATH=$HOME/.local/bin:$PATH:$HOME/mybin/

# if [ -e /home/gaetan/.nix-profile/etc/profile.d/nix.sh ]; then . /home/gaetan/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# **** LISAAC COMPILER ****
# export PATH=$PATH:/home/gaetan/Downloads/lisaac/bin:/home/gaetan/.local/share/gem/ruby/3.3.0/bin:/home/gaetan/.config/emacs/bin:~/.config/composer/vendor/bin

# eval "$(fzf --zsh)"
# eval "$(zoxide init zsh)"
# eval "$(ssh-agent -s)"
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
# SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket


# Load Angular CLI autocompletion.
# source <(ng completion script)

eval "$(starship init zsh)"

# # pnpm
# export PNPM_HOME="/home/gaetan/.local/share/pnpm"
# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" ;;
# esac
# pnpm end
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share/applications/
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
