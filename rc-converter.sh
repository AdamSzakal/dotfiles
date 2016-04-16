#!/bin/bash

if [ -f ~/.vimrc ]
then
    cp ~/.vimrc ~/.vimrc-backup
    echo "Created .vimrc-backup"
    echo -e "source ~/Repos/dotfiles/_vimrc" > ~/.vimrc
    echo "Added source to _vimrc in .vimrc"
else 
    echo -e "source ~/Repos/dotfiles/_vimrc" > ~/.vimrc
    echo "Created ~/.vimrc which links to ./_vimrc"
fi

