# Homebrew (macOS ARM)
if [[ -e /opt/homebrew/bin/brew ]]
then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Homebrew (macOS Intel)
if [[ -e /usr/local/bin/brew ]]
then
    eval "$(/usr/local/bin/brew shellenv)"
fi
