#!/bin/bash -eu


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
    while read abspath
    do
        relpath="${abspath:${#DOTFILES}+1}"
        ln -fs "$abspath" "$HOME/$relpath"
    done
}


DOTFILES="$(cd "$(dirname "$BASH_SOURCE")" && pwd)"
find_dotfiles | deploy_dotfiles
