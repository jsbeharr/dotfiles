# Path to oh-my-zsh installation
export ZSH=~/.oh-my-zsh

# User configuration
# ZSH Shell Theme 
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="justin-custom"
PS2="❯ "
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/rsa_id"

# When ZSH updates 
export UPDATE_ZSH_DAYS=13

# List of Plugins for Oh-My-ZSH
plugins=(
git,
iterm2
)

# sources oh-my-zsh
# Placed after oh-my-zsh specifics in order to work
source $ZSH/oh-my-zsh.sh

# Editor Settings
# Sets neovim as default editor if it is installed
# Otherwise regular vim will be the default
if [ -x "$(command -v nvim)" ]; then
  export VISUAL=nvim
else
  export VISUAL=vim
fi
export EDITOR=$VISUAL

# aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# sets term to iterm2 of mac
if [[ $(uname) == 'Darwin' ]]; then
  export TERM=xterm-256color
fi

# shell integration for iterm2
if [[ $(uname) == 'Darwin' ]]; then
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi
