#!/bin/sh

askYesorNo(){
    while true; do
        read -p "$1 (y/n)?" answer
        case $answer in
            [yY] | [yY]es | YES )
                return 0;;
            [nN] | [nN]o | NO )
                return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}
    
echo "dotfile settings start"

for f in `ls -a | grep ^_`;
do
	ln -s ${PWD}/${f} ~/${f}
done

askYesorNo "start neobundle install ?"
if [ $? -eq 0 ]; then
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
else
    echo "neobundle instll skiped..."
fi  

echo "dotfile settings finished!!"

