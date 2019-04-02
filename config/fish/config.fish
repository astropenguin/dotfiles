# fish: bootstrap installation of fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    set FISH_FUNC_DIR $XDG_CONFIG_HOME/fish/functions

    echo -n 'Downloading fisher...'
    curl -sLo $FISH_FUNC_DIR/fisher.fish --create-dirs https://git.io/fisher
    echo ' done!'

    fish -c fisher
end

# fish: basic environment variables
set -x EDITOR vim

# Python: pipenv and pyenv
set -x PYENV_ROOT $HOME/.pyenv
pyenv init - | source

# Tool: am
set -x AM_CACHE_PATH $HOME/.am
mkdir -p $AM_CACHE_PATH

# Tool: Java SE 8
set -x JAVA_HOME (/usr/libexec/java_home -v "1.8")
set -x PATH $JAVA_HOME/bin $PATH
