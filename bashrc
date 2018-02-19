# alias
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

PATH="/usr/local/bin:/usr/bin:/bin"
export PATH
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export PS1="\[\033[1;38m\][\d:\u:\W ] $\[\033[0m\] "
export PS2="\[\033[1;38m\]> \[\033[0m\]"

# Bash Git Prompt
# Will enter the git prompt whenever entering a git repository
GIT_PROMPT_ONLY_IN_REPO=1
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
	__GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
	. "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Git Autocompletion
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

# Bash Autocompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
