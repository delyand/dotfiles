# arcanist setup
export PATH=$PATH:/Users/delyand-work/Dev/tools/arcanist/bin:/Applications/Dev/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine:/Users/delyand-work/Dev/tools/appengine-java-sdk-1.9.27/bin/:~/.local/lib/aws/bin:$HOME/Dev/tools/gsutil:/Users/delyand-work/Dev/tools/apache-cassandra-2.2.2/bin:/usr/local/opt/ruby/bin:
source /Users/delyand-work/Dev/tools/arcanist/resources/shell/bash-completion

# The next line updates PATH for the Google Cloud SDK.
source '/Users/delyand-work/Dev/tools/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/delyand-work/Dev/tools/google-cloud-sdk/completion.bash.inc'

source ~/.bashrc

# java home
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

export LEANPLUM_HOME=$HOME/Dev/Projects/Leanplum
export TOOLS_DIR=$HOME/Dev/tools

# grep Leanplum project directory
greplp() {
  grep -R --exclude="*.min.js*" --exclude="*.class" --exclude="lpall.js*" -I "$1" $LEANPLUM_HOME/$2
}

alias 'cdlp'='cd /Users/delyand-work/Dev/Projects/Leanplum'
