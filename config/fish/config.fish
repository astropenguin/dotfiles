# fish: aliases
alias rm "rm -i"

# tool: vim
if type -q vim
    set -x EDITOR vim
end

# tool: pyenv
if type -q pyenv
    pyenv init - | source
end

# tool: am
if type -q am
    set -x AM_CACHE_PATH $HOME/.config/am
    mkdir -p $AM_CACHE_PATH
end

# tool: fls & fcd
if type -q fls
    source /usr/local/etc/fcd.fish
end
