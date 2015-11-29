export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# The next line updates PATH for the Google Cloud SDK.
source '/Users/delyand-work/Dev/tools/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/delyand-work/Dev/tools/google-cloud-sdk/completion.bash.inc'

source ~/.bashrc

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
