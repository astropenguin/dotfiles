# Common settings for bash and zsh
if [[ -e "$HOME/.commonrc" ]]
then
    source "$HOME/.commonrc"
fi


# Local settings (if any)
if [[ -e "$HOME/.zshrc.local" ]]
then
    source "$HOME/.zshrc.local"
fi


# Key binding (Emacs mode)
bindkey -e
