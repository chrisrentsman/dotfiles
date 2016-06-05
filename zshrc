# Export oh-my-zsh location
ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="crentsman"

# Plugins
plugins=(git rbates)

# Default path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

# Set up zsh base
source $ZSH/oh-my-zsh.sh

# Base16 Shell Config
BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Other set up other dotfiles
for file in ~/.{alias,functions,env}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
