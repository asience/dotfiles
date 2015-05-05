#!/bin/sh

for f in `ls -a --ignore='\.' --ignore='\.\.' --ignore='.git*' --ignore='setting.sh'`;
do
	ln -s ${PWD}/${f} ~/${f}
done

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
