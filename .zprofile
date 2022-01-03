# Common profile for bash and zsh
if [[ -e "$HOME/.common_profile" ]]
then
    source "$HOME/.common_profile"
fi


# Zsh settings (if any)
if [[ -e "$HOME/.zshrc" ]]
then
    source "$HOME/.zshrc"
fi
