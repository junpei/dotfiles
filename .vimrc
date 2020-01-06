filetype plugin indent on

syntax enable

set directory=~/tmp,/tmp
set backupdir=~/tmp,/tmp
set undodir=~/tmp,/tmp
"set viminfo+=~/tmp,/tmp

set number

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.cache/dein')
call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')

call dein#add('altercation/vim-colors-solarized')
call dein#add('vim-ruby/vim-ruby')
call dein#add('fuenor/im_control.vim')
call dein#add('junegunn/vim-easy-align')
call dein#add('Glench/Vim-Jinja2-Syntax')
call dein#add('leafgarland/typescript-vim')

"call dein#add('Shougo/vimproc.vim', {'build': 'make'})
"call dein#add('Shougo/neocomplete.vim')
"call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/neosnippet')

call dein#end()
call dein#save_state()

let g:solarized_termcolors=256

"let javaScript_fold=1
"let g:Align_xstrlen=3
"let php_folding=1
"let perl_fold=1

if has('gui_running')
  set background=dark
else
  set background=light
endif

au BufEnter * execute ":lcd " . expand("%:p:h")

"au! BufNewFile,BufRead *.tt setf tt2html
"au! BufNewFile,BufRead *.tjs setf javascript
"au! BufNewFile,BufRead *.psgi setf perl
"autocmd BufNewFile,BufRead *.ctp set filetype=php
"au BufNewFile,BufRead *.tt call s:AdjustTT2Type()
"au! BufNewFile,BufRead *.tt setf tt2html
"au! BufNewFile,BufRead *.scala setf scala

"skk
" 「日本語入力固定モード」の動作モード
"inoremap <silent> <C-j> <C-^>
let IM_CtrlMode = 4
" 「日本語入力固定モード」切替キー
inoremap <silent> <C-j> <C-^><C-r>=IMState('FixMode')<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
