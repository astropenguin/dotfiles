# fish: environment variables
set -x EDITOR vim

# fish: aliases
alias rm "rm -i"

# tool: pipenv and pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PIPENV_VENV_IN_PROJECT 1
pyenv init - | source

# tool: am
set -x AM_CACHE_PATH $HOME/.am
mkdir -p $AM_CACHE_PATH

# tool: Java SE 8
set -x JAVA_HOME (/usr/libexec/java_home -v "1.8")
set -x PATH $JAVA_HOME/bin $PATH

# tool: fls/fcd
source /usr/local/etc/fcd.fish
