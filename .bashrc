# save more history more often
HISTSIZE=130000 HISTFILESIZE=-1
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[0;30m\]'
export TERM=xterm-256color

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# vim for arc diff
export EDITOR=vim

alias 'ls'='ls -a'
