#/bin/sh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
DOTFILES_DIR=$HOME/.dotfiles
if [[ "$DOTFILES_DIR" != "$SCRIPTPATH" ]];then
  echo "Moving folder from $SCRIPTPATH to $DOTFILES_DIR"
  mv $SCRIPTPATH $DOTFILES_DIR
fi

#Install oh-my-zsh plugins
PLUGINS="$HOME/.dotfiles/configs/.oh-my-zsh/plugins"
ZSH_SUGGESTIONS="$PLUGINS/zsh-autosuggestions"
if ! [[ -d "$ZSH_SUGGESTIONS" ]];then
  echo "Installing zsh-autosuggestions"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_SUGGESTIONS 
fi

THEMES="$HOME/.dotfiles/configs/.oh-my-zsh/themes"
if ! [[ -d "$THEMES/powerlevel10k" ]];then
  echo "Installing zsh theme: powerlevel10k"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$THEMES/powerlevel10k"
fi

#Apply config
cd ~/.dotfiles/
stow configs
