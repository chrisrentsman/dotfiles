# Export oh-my-zsh location
ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="crentsman"

# Plugins
plugins=(git rbates history)

# Keybindings
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# Default path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

# Set up zsh base
source $ZSH/oh-my-zsh.sh

# Other set up other dotfiles
for file in ~/.{alias,functions,env}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set up base16 shell
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Set up rbenv
eval "$(rbenv init -)"

# Set up NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Set up virtualenv wrapper
source /usr/local/bin/virtualenvwrapper.sh
