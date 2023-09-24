# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"


# export JAVA_HOME="$(dirname $(dirname $(readlink $(readlink $(which javac)))))"
# export PATH="$PATH:$JAVA_HOME/bin"
# export CLASSPATH=.:$JAVA_HOME/jre/lib:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar
export PATH="$PATH:$HOME/.local/bin:$HOME/bin"
