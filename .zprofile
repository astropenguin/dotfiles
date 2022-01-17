# Common profile for bash and zsh
if [[ -e "$HOME/.common_profile" ]]
then
    source "$HOME/.common_profile"
fi


# Local profile (if any)
if [[ -e "$HOME/.zprofile.local" ]]
then
    source "$HOME/.zprofile.local"
fi


# Zsh settings (if any)
if [[ -e "$HOME/.zshrc" ]]
then
    source "$HOME/.zshrc"
fi
