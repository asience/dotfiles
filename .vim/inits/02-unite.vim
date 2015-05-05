" basic settings
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" for git project
function! DispatchUniteFileRecAsyncOrGit()
  if isdirectory(getcwd()."/.git")
    Unite file_rec/git
  else
    Unite file_rec/async
  endif
endfunction

" keymap
nnoremap [unite] <Nop>
nmap f [unite]

nnoremap [unite]u  :<C-u>Unite -no-split<Space>

" 全部乗せ
nnoremap <silent> [unite]a  :<C-u>UniteWithCurrentDir buffer file_mru bookmark file file_rec<CR>
" ファイル一覧
nnoremap <silent> [unite]f  :<C-u>Unite file<CR>
" ファイル一覧 (再帰)
nnoremap <silent> [unite]h  :<C-u>call DispatchUniteFileRecAsyncOrGit()<CR>
" バッファ一覧
nnoremap <silent> [unite]b  :<C-u>Unite buffer<CR>
" 常用セット
nnoremap <silent> [unite]u  :<C-u>Unite file_mru file_rec<CR>
" 最近使用したファイル一覧
nnoremap <silent> [unite]m  :<C-u>Unite file_mru<CR>
" 現在のバッファのカレントディレクトリからファイル一覧
nnoremap <silent> [unite]d  :<C-u>UniteWithBufferDir file<CR>
" レジスタ一覧
nnoremap <silent> [unite]r  :<C-u>Unite register<CR>
" snippet一覧
nnoremap <silent> [unite]s  :<C-u>Unite snippet<CR>
" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

" unite grep に ag を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

let g:unite_source_file_mru_limit = 200
let g:yankring_zap_keys = ""

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
    " ESCキーを2回押すと終了する
    nmap <buffer> <ESC>      <Plug>(unite_exit)
    nmap <buffer> <ESC><ESC> <Plug>(unite_exit)
    imap <buffer> jj      <Plug>(unite_insert_leave)
    nnoremap <silent><buffer> <C-k> :<C-u>call unite#mappings#do_action('preview')<CR>
    imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
    " Start insert.
    let g:unite_enable_start_insert = 1

    " ウィンドウを分割して開く
    nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
    inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')

    " ウィンドウを縦に分割して開く
    nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
    inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
endfunction

" .gitignoreで指定したファイルと.git/以下のファイルを候補から除外する
"function! s:unite_gitignore_source()
"  let sources = []
"  if filereadable('./.gitignore')
"    for file in readfile('./.gitignore')
"      " コメント行と空行は追加しない
"      if file !~ "^#\\|^\s\*$"
"        call add(sources, file)
"      endif
"    endfor
"  endif
"  if isdirectory('./.git')
"    call add(sources, '.git')
"  endif
"  let pattern = escape(join(sources, '|'), './|')
"  call unite#custom#source('file_rec', 'ignore_pattern', pattern)
"  call unite#custom#source('grep', 'ignore_pattern', pattern)
"endfunction

"call s:unite_gitignore_source()

