# ======================
#      Variables
# ======================
export $(dbus-launch)
export ZSH=$HOME/.oh-my-zsh
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:/usr/local/bin/python"
PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"
PATH="$PATH:$HOME/.npm-global/bin:"
export PATH
ZSH_THEME="powerlevel10k/powerlevel10k" # possible to use random
if [[ -f $HOME/.p10k.zsh ]];then
  source $HOME/.p10k.zsh
fi
export SHELL="/bin/zsh"
export EDITOR="nvim"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'
export WLR_NO_HARDWARE_CURSORS=1
export TerminalEmulator="alacritty"
#DISABLE_UNTRACKED_FILES_DIRTY="true" #git marking
#COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
#COMPLETION_WAITING_DOTS="true"
#ENABLE_CORRECTION="true" #auto correction

# ======================
#     ZSH Plugins
# ======================
# Folders: $ZSH/plugins/ $ZSH_CUSTOM/plugins/
#
zstyle ':omz:update' mode disabled  #modes: (disabled, auto, reminder)
#zstyle ':omz:update' frequency 13 #frequency in days

plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
zshcache_time="$(date +%s%N)" # On-demand rehash
autoload -Uz add-zsh-hook
rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}
add-zsh-hook -Uz precmd rehash_precmd

# ======================
#         alias
# ======================
alias "r=ranger"
alias "clip=xclip -selection clipboard"
alias "snvim=sudo -E nvim"
alias "nconf=nvim ~/.config/nvim"
alias "yt-dlp-music=yt-dlp -x --audio-format mp3 --embed-thumbnail"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
source ~/.zshrc_secret.zsh
