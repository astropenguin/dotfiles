#!/bin/sh -eu


find_dotfiles () {
    cd "$DOTFILES"
    find . \
        -not -name ".DS_Store" \
        -not -name "install.sh" \
        -not -name "LICENSE" \
        -not -name "README.md" \
        -not -path "*/.git/*" \
        -type f \
    | cut -d / -f 2-
}


deploy_dotfiles () {
    while read dotfile
    do
        src="$DOTFILES/$dotfile"
        link="$HOME/$dotfile"
        mkdir -p "$(dirname "$link")"
        ln -fs "$src" "$link"
    done
}


DOTFILES="$(cd "$(dirname "${BASH_SOURCE:-$0}")" && pwd)"
find_dotfiles | deploy_dotfiles
