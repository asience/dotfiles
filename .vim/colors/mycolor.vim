set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mycolor"

hi Boolean         ctermfg=181
hi Character       ctermfg=181   cterm=bold
hi Comment         ctermfg=244
hi Conditional     ctermfg=223   cterm=bold
hi Constant        ctermfg=181   cterm=bold
hi Cursor          ctermfg=233   ctermbg=109     cterm=bold
hi Debug           ctermfg=181   cterm=bold
hi Define          ctermfg=223   cterm=bold
hi Delimiter       ctermfg=245
hi DiffAdd         ctermfg=66    ctermbg=237     cterm=bold
hi DiffChange      ctermbg=236
hi DiffDelete      ctermfg=236   ctermbg=238
hi DiffText        ctermfg=217   ctermbg=237     cterm=bold
hi Directory       ctermfg=109   cterm=bold
hi ErrorMsg        ctermfg=115   ctermbg=236     cterm=bold
hi Exception       ctermfg=249   cterm=bold
hi Float           ctermfg=251
hi Function        ctermfg=228
hi Identifier      ctermfg=223
hi Include         ctermfg=180   cterm=bold
hi IncSearch       ctermfg=228   ctermbg=23
hi Keyword         ctermfg=223   cterm=bold
hi LineNr          ctermfg=248
hi Macro           ctermfg=223   cterm=bold
hi MatchParen      ctermfg=229   ctermbg=237     cterm=bold
hi ModeMsg         ctermfg=223   cterm=none
hi MoreMsg         ctermfg=15    cterm=bold
hi Number          ctermfg=116
hi Operator        ctermfg=230
hi PreCondit       ctermfg=180   cterm=bold
hi PreProc         ctermfg=223   cterm=bold
hi Question        ctermfg=15    cterm=bold
hi Repeat          ctermfg=223   cterm=bold
hi Search          ctermfg=230   ctermbg=22
hi SpecialChar     ctermfg=181   cterm=bold
hi SpecialComment  ctermfg=108   cterm=bold
hi Special         ctermfg=181
hi SpecialKey      ctermfg=151
hi Statement       ctermfg=187   cterm=none
hi StatusLine      ctermfg=236   ctermbg=186
hi StatusLineNC    ctermfg=235   ctermbg=108
hi StorageClass    ctermfg=249   cterm=bold
hi String          ctermfg=174
hi Structure       ctermfg=229   cterm=bold
hi Tag             ctermfg=181   cterm=bold
hi Title           ctermfg=7     ctermbg=NONE    cterm=bold
hi Todo            ctermfg=254   ctermbg=NONE    cterm=bold
hi Typedef         ctermfg=253   cterm=bold
hi Type            ctermfg=187   cterm=bold
hi Underlined      ctermfg=188   cterm=underline
hi VertSplit       ctermfg=236   ctermbg=65
hi VisualNOS       ctermfg=236   ctermbg=210     cterm=bold
hi WarningMsg      ctermfg=231   ctermbg=236     cterm=bold
hi WildMenu        ctermfg=194   ctermbg=236     cterm=underline

" PHP
hi! link phpFunctions Function
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator
hi! link phpOperator Normal
hi! link phpRelation Normal
hi! link phpVarSelector Identifier
