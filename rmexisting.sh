#!/bin/bash

files="bash_profile bashrc aliases functions vimrc gitconfig gitignore gitignore_global gitattributes dictionary plan"

for file in $files; do
    # echo "Creating symlink to $file in home directory."
    rm ~/.$file
done

