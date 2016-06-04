# Export oh-my-zsh location
ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="rbates"

# Plugins
plugins=(git rbates)

# Default path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

# Base16 Shell Config
BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

source $ZSH/oh-my-zsh.sh
