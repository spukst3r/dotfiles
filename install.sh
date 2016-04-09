#! /bin/bash
set -e

DEST=$HOME
SRC=$(pwd)
FILES=".vim .vimrc .tmux.conf .bash_aliases"

git submodule update --init

for f in $FILES; do
     cp -r "$SRC/$f" "$DEST/"
done

vim +PluginInstall +qall
