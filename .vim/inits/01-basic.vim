set number                      "行数表示
set nocompatible                "viと互換を持たない
set backspace=indent,eol,start  "バックスペースで削除できる物を指定する
set nobackup                    "バックアップをとらない
set title                       "タイトルを表示する
set wrap                        "折り返し
set autoread                    "他でファイルに変更があったら自動読み込み
set wildmenu                    "コマンドライン補完
set wildchar=<tab>              "コマンド補完を開始するキー
set wildmode=list:longest
set completeopt=menu,preview,menuone
set showmatch matchtime=1       "カッコ対応
syntax on                       "シンタックスハイライト
set vb t_vb=                    "ビープ音を鳴らさない
set foldmethod=marker
set laststatus=2                "これいれないとpowerline表示されない
set ruler
set list                        "不可視文字表示
set listchars=tab:>.,trail:_,extends:>,precedes:< " 不可視文字の表示形式

" ;でコマンド入力
noremap ; :
noremap : ;

"カレントウインドウにのみ罫線を引く
augroup cch
autocmd! cch
autocmd WinLeave * set nocursoline
autocmd WinEnter,BufRead * set cursorline
augroup END
:hi clear CursorLine
:hi CusorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

"indent
set autoindent
set smartindent
set cindent
set expandtab
set tabstop=4 shiftwidth=4 softtabstop=4

au BufRead,BufNewFile *.coffee  set filetype=coffee
autocmd FileType coffee set ts=2 sw=2 expandtab


"検索設定
set ignorecase                  "大文字と小文字を区別しない
set smartcase                   "大文字と小文字が含まれていたらそのまま
set wrapscan                    "最後までいったら最初に戻る
set incsearch                   "インクリメンタルサーチ
set hlsearch                    "一致文字強調
nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return> "エスケープ二回で強調消去

"characterset
set enc=utf-8
set fencs=utf-8

colorscheme jellybeans
autocmd FileType * setlocal formatoptions-=ro
