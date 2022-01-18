#!/bin/sh -eu


list_dotfiles () {
    cd "$REPOSITORY"
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
        src="$REPOSITORY/$dotfile"
        link="$HOME/$dotfile"
        mkdir -p "$(dirname "$link")"
        ln -fs "$src" "$link"
    done
}


REPOSITORY="$(cd "$(dirname "${BASH_SOURCE:-$0}")" && pwd)"
list_dotfiles | deploy_dotfiles
