# Common profile for bash and zsh
if [[ -e "$HOME/.common_profile" ]]
then
    source "$HOME/.common_profile"
fi


# Bash settings (if any)
if [[ -e "$HOME/.bashrc" ]]
then
    source "$HOME/.bashrc"
fi
