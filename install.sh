#!/bin/sh -eu


find_dotfiles () {
    find "$DOTFILES" \
        -not -name ".DS_Store" \
        -not -name "install.sh" \
        -not -name "LICENSE" \
        -not -name "README.md" \
        -not -path "*/.git/*" \
        -type f
}


deploy_dotfiles () {
    while read dotfile
    do
        link="$HOME/${abspath:${#DOTFILES}+1}"
        mkdir -p "$(dirname "$link")"
        ln -fs "$dotfile" "$link"
    done
}


DOTFILES="$(cd "$(dirname "${BASH_SOURCE:-$0}")" && pwd)"
find_dotfiles | deploy_dotfiles
