# save more history more often
HISTSIZE=130000 HISTFILESIZE=-1
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# vim for arc diff
export EDITOR=vim

alias 'ls'='ls -a'
