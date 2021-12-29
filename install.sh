#!/bin/bash -eu


DOTFILES="$(cd "$(dirname "$BASH_SOURCE")" && pwd)"
EXCLUDES=".DS_Store .git"


is_dotfile () {
    for name in $EXCLUDES
    do
        if [[ "$1" == "$name" ]]
        then
            return 1
        else
            continue
        fi
    done
}


for file in $DOTFILES/.??*
do
    base="$(basename "$file")"

    if is_dotfile "$base"
    then
        ln -fs "$file" "$HOME/$base"
    fi
done
