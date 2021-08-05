#!/bin/zsh

delete_trash() {
    if [ "$(ls ~/.Trash)" ]
    then
        rm -rf ~/.Trash/*
    else
        echo "Trash is already empty"
    fi
}

if [ -d ~/.Trash ]
then
    delete_trash
    echo "Done!"
else
    echo "No Trash dir found."
fi
