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
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
