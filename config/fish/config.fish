# fish: greeting
set fish_greeting

# fish aliases: rm
if type -q gmv
    mkdir -p $HOME/.Trash
    alias rm "gmv --backup=numbered -t $HOME/.Trash"
else
    alias rm "rm -i"
end

# fish aliases: ls
if type -q exa
    alias ls "exa --header --git --grid --time-style=long-iso"
end

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
