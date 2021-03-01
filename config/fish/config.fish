# rm
if type -q gmv
    mkdir -p $HOME/.Trash
    alias rm "gmv --backup=numbered -t $HOME/.Trash"
else
    alias rm "rm -i"
end

# ls
if type -q exa
    alias ls "exa --header --git --time-style=long-iso"
end

# python
if test -f $HOME/.pythonrc
    set -x PYTHONSTARTUP $HOME/.pythonrc
end

# python: pyenv
if type -q pyenv
    pyenv init - | source
end

# python: direnv
if type -q direnv
    direnv hook fish | source
end

# python: poetry
if type -q poetry
    set -x POETRY_VIRTUALENVS_IN_PROJECT 1
    alias run "poetry run"
end

# python: pipenv
if type -q pipenv
    set -x PIPENV_VENV_IN_PROJECT 1
    set -x PIPENV_VERBOSITY -1
end

# am
if type -q am
    set -x AM_CACHE_PATH $HOME/.config/am
    mkdir -p $AM_CACHE_PATH
end

# fcd
if type -q fls
    source /usr/local/etc/fcd.fish
end

# vim
if type -q vim
    set -x EDITOR vim
end
