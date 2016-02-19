# arcainst setup
export PATH=$PATH:/Users/delyand-work/Dev/tools/arcanist/bin
source /Users/delyand-work/Dev/tools/arcanist/resources/shell/bash-completion

# Google AppEngine
export PATH=$PATH:/Applications/Dev/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine:/Users/delyand-work/Dev/tools/appengine-java-sdk-1.9.27/bin/

# Aws
export PATH=$PATH:~/.local/lib/aws/bin

# GCS
export PATH=$PATH:~/Dev/tools/gsutil

# Apache Cassandra CQLSH
export PATH=$PATH:~/Dev/tools/apache-cassandra-3.0.2/bin

# The next line updates PATH for the Google Cloud SDK.
source '/Users/delyand-work/Dev/tools/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/delyand-work/Dev/tools/google-cloud-sdk/completion.bash.inc'

# java home
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

export LEANPLUM_HOME=$HOME/Dev/Projects/Leanplum
export TOOLS_DIR=$HOME/Dev/tools

# grep Leanplum project directory
greplp() {
  grep -R --exclude="*.min.js*" --exclude="*.class" --exclude="lpall.js*" -I "$1" $LEANPLUM_HOME/$2
}

alias 'cdlp'='cd /Users/delyand-work/Dev/Projects/Leanplum'

source ~/.bashrc
