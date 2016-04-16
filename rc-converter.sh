#!/bin/bash

if [ -f ~/.vimrc ]
then
    cp ~/.vimrc ~/.vimrc-backup
    echo "Created .vimrc-backup"
fi

echo -e "source ~/Repos/dotfiles/_vimrc" > ~/.vimrc
echo "Added source to _vimrc in .vimrc"
