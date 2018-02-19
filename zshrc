# Path to your oh-my-zsh installation.
export ZSH=/Users/justinbeharry/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="justin-custom"
PS2="❯ "
# The following line changes how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git,
iterm2
)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/rsa_id"
export EDITOR='nvim'

# aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# opening message - requires neofetch
. /etc/motd.sh

# shell integration for iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
