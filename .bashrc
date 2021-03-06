# save more history more often
HISTSIZE=130000 HISTFILESIZE=-1
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color
# Light
# PS1='\[\e[0;32m\]\u\[\e[m\]\[\e[0;36m\]@\[\e[m\]\[\e[0;32m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[0;30m\]'
# Dark
PS1='\[\e[0;32m\]\u\[\e[m\]\[\e[0;36m\]@\[\e[m\]\[\e[0;32m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[7m\]\[\e[0;30m\]'

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# kubectl autocomplete
if command -v kubectl > /dev/null
then
  source <(kubectl completion bash)
else
  echo Kubectl not installed.
fi

# vim for arc diff
export EDITOR=vim

alias 'ls'='ls -la'

if [ -f /usr/local/bin/mvim ]; then
  alias vim="/usr/local/bin/mvim"
fi

export HOMEBREW_NO_AUTO_UPDATE=1
