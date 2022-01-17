# Common settings for bash and zsh
if [[ -e "$HOME/.commonrc" ]]
then
    source "$HOME/.commonrc"
fi


# Local settings (if any)
if [[ -e "$HOME/.bashrc.local" ]]
then
    source "$HOME/.bashrc.local"
fi
