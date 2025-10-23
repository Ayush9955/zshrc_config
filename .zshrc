# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ===== Oh My Zsh base =====
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins: add or remove as you like
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  fzf
)

source $ZSH/oh-my-zsh.sh

# ===== Homebrew (also in ~/.zprofile for login shells) =====
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# ===== FZF extras =====
# (installed by brew fzf install step)
# keybindings + completion are auto-sourced by brew install script

# ===== Useful aliases =====
alias ls='eza -lah --group-directories-first'
alias cat='bat -pp'
alias grep='rg'
alias findf='fd'
alias ..='cd ..'
alias ...='cd ../..'
alias gs='git status'
alias gl='git log --oneline --graph --decorate --all'

# ===== History =====
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS HIST_REDUCE_BLANKS SHARE_HISTORY

# ===== Completion tweaks =====
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ===== Editor =====
export EDITOR="nano"

# ===== Powerlevel10k instant prompt (optional, speeds up) =====
# Enable if using p10k config:
# [[ -r ~/.p10k.zsh ]] && source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.12/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.12/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/python@3.12/bin:/opt/homebrew/bin:$PATH"
alias python="python3"
alias pip="pip3"
alias python="python3"
alias pip="pip3"
alias dpsql='docker exec -it zofa-platform-backend-go-postgres-1 psql -U zofa -d zofa'
export EDITOR='vim'
export EDITOR="cat"
export PAGER="cat"
export PATH=$PATH:/Users/ayush/go/bin
