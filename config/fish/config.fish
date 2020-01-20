# fish: environment variables
set -x EDITOR vim

# fish: aliases
alias rm "rm -i"

# tool: pyenv
if type pyenv >/dev/null 2>&1
    pyenv init - | source
end

# tool: am
set -x AM_CACHE_PATH $HOME/.config/am
mkdir -p $AM_CACHE_PATH

# tool: fls & fcd
if type fls >/dev/null 2>&1
    source /usr/local/etc/fcd.fish
end
