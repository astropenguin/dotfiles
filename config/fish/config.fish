# fish: aliases
alias rm "rm -i"

# fish: greeting
set fish_greeting

# tool: pyenv
if type -q pyenv
    pyenv init - | source
end

# tool: direnv
if type -q direnv
    direnv hook fish | source
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

# tool: vim
if type -q vim
    set -x EDITOR vim
end
