# ===== Basic zsh setup =====

# Fastfetch

if [[ -o interactive ]] && [[ -z "$SSH_CONNECTION" ]]; then
	fastfetch
fi

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt inc_append_history 
setopt hist_ignore_dups
setopt hist_reduce_blanks

# Completion
autoload -Uz compinit
compinit

# Better completion menu
zstyle ':completion:*' menu select

# ===== Autosuggestions (fish-like) =====
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ===== Syntax highlighting =====
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ===== Oh My Posh =====
eval "$(oh-my-posh init zsh --config ~/jandedobbeleer.omp.json)"

# ====== Zoxide ========
eval "$(zoxide init zsh)"

# ====== fzf key-binding ======
source /usr/share/fzf/shell/key-bindings.zsh

# ===== alias ========
alias suhu='sensors'
alias lz='ls -lahZ'
alias cat='bat'
alias vi='nvim'
alias cl='clear'
alias ls='eza --icons --group-directories-first'
alias ll='eza -lah --git'
alias tree='eza --tree'
alias cd='z'
alias suspend='sudo systemctl suspend'
alias reboot='sudo reboot now'

# ======== nix =========
if [ -e /home/tenka/.nix-profile/etc/profile.d/nix.sh ]; then . /home/tenka/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
