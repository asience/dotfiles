set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    call neobundle#end()
endif

" NeoBundle
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Align'
NeoBundle 'tpope/vim-surround'
NeoBundle 'smartword'
NeoBundle 'thinca/vim-quickrun'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim', {'depends' : 'Shougo/unite.vim'}
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimfiler'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'thinca/vim-ref'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'slim-template/vim-slim'



filetype plugin indent on
filetype indent on
syntax on
