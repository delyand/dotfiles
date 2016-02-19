# save more history more often
HISTSIZE=130000 HISTFILESIZE=-1
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# arcanist setup
export PATH=$PATH:/Users/delyand-work/Dev/tools/arcanist/bin:/Applications/Dev/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine:/Users/delyand-work/Dev/tools/appengine-java-sdk-1.9.27/bin/:~/.local/lib/aws/bin:$HOME/Dev/tools/gsutil:/Users/delyand-work/Dev/tools/apache-cassandra-2.2.2/bin:/usr/local/opt/ruby/bin:
source /Users/delyand-work/Dev/tools/arcanist/resources/shell/bash-completion

# java home
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

# vim for arc diff
export EDITOR=vim

export LEANPLUM_HOME=$HOME/Dev/Projects/Leanplum
export TOOLS_DIR=$HOME/Dev/tools

# grep Leanplum project directory
greplp() {
  grep -R --exclude="*.min.js*" --exclude="*.class" --exclude="lpall.js*" -I "$1" $LEANPLUM_HOME/$2
}

alias 'glog'='git log --graph --oneline --all'
alias 'cdlp'='cd /Users/delyand-work/Dev/Projects/Leanplum'
