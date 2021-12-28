#!/bin/bash -eu


DOTFILES=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
EXCLUDES='.DS_Store .git'


is_dotfile () {
    for item in $EXCLUDES
    do
        if [[ $(basename $1) == $item ]]
        then
            return 1
        else
            continue
        fi
    done
}


for path in $DOTFILES/.??*
do
    if is_dotfile $path
    then
        ln -fs $path $HOME/$(basename $path)
    fi
done
