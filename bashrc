# My Bash settings
# .bash_profile and .bashrc use the same settings
#
# Prompt Configuration
# export PATH="/usr/local/bin:/usr/bin:/bin:/anaconda3/bin"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export PS1="\[\033[1;31m\][\[\033[1;35m\]\d \[\033[1;34m\]\u:\[\033[1;33m\]\W\[\033[1;31m\]]\$(__git_ps1 '(%s)')\[\033[1;32m\]$\[\033[0m\] "
export PS2="\[\033[1;31m\]> \[\033[0m\]"

# Default Editor
# Sets neovim as default editor if it is installed
# Otherwise regular vim will be the default
if [ -x "$(command -v nvim)" ]; then
  export VISUAL=nvim
else
  export VISUAL=vim
fi
export EDITOR=$VISUAL

# Bash Git Prompt
# Will enter the git prompt whenever entering a git repository
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  . "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Git Autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Bash Autocompletion for mac
# Must install through homebrew in order to work
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#   . $(brew --prefix)/etc/bash_completion
# fi

# GPG 
export GPG_TTY=$(tty)

# alias
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# Andaconda python programs
# . /anaconda3/etc/profile.d/conda.sh
