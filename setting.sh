#!/bin/sh


current_dir=$(cd $(dirname $0); pwd)

ln -sf $current_dir/.vimrc ~/.vimrc                    
ln -sf $current_dir/.zshrc ~/.zshrc
mkdir ~/.vim
mkdir ~/.vim/colors
mkdir ~/.vim/inits

ln -sf $current_dir/.vim/colors/Tomorrow-Night.vim  ~/.vim/colors/Tomorrow-Night.vim
ln -sf $current_dir/.vim/colors/candy.vim           ~/.vim/colors/candy.vim
ln -sf $current_dir/.vim/colors/jellybeans.vim      ~/.vim/colors/jellybeans.vim
ln -sf $current_dir/.vim/colors/mycolor.vim         ~/.vim/colors/mycolor.vim
ln -sf $current_dir/.vim/inits/00-bundle.vim        ~/.vim/inits/00-bundle.vim
ln -sf $current_dir/.vim/inits/01-basic.vim         ~/.vim/inits/01-basic.vim
ln -sf $current_dir/.vim/inits/02-unite.vim         ~/.vim/inits/02-unite.vim
ln -sf $current_dir/.vim/inits/03-lightline.vim     ~/.vim/inits/03-lightline.vim
ln -sf $current_dir/.vim/inits/04-completion.vim    ~/.vim/inits/04-completion.vim
ln -sf $current_dir/.vim/inits/05-indent.vim        ~/.vim/inits/05-indent.vim
ln -sf $current_dir/.vim/inits/06-todo.vim          ~/.vim/inits/06-todo.vim                   

