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
call dein#add('posva/vim-vue')
call dein#add('keith/swift.vim')
call dein#add('hashivim/vim-terraform')
call dein#add('pprovost/vim-ps1')
"call dein#add('leafgarland/typescript-vim')
call dein#add('peitalin/vim-jsx-typescript')
call dein#add('dart-lang/dart-vim-plugin')

"call dein#add('Shougo/vimproc.vim', {'build': 'make'})
"call dein#add('Shougo/neocomplete.vim')
"call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/neosnippet')

call dein#end()
call dein#save_state()

let g:solarized_termcolors=256
"let g:vue_pre_processors = ['scss']

"let javaScript_fold=1
"let g:Align_xstrlen=3
"let php_folding=1
"let perl_fold=1

"let dart_html_in_string=v:true
let g:lsc_auto_map = v:true

if has('gui_running')
  set background=dark
else
  set background=light
endif

au BufEnter * execute ":lcd " . expand("%:p:h")
autocmd BufNewFile,BufRead *.tfvars  set filetype=tf
autocmd BufNewFile,BufRead *.yaml.j2  set filetype=yaml
autocmd BufNewFile,BufRead *.ps1  set filetype=ps1
autocmd BufNewFile,BufRead *.ts  set filetype=typescript
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

"autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
"autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
"set viewoptions-=options

"au! BufNewFile,BufRead *.tt setf tt2html
"au! BufNewFile,BufRead *.tjs setf javascript
"au! BufNewFile,BufRead *.psgi setf perl
"autocmd BufNewFile,BufRead *.ctp set filetype=php
"au BufNewFile,BufRead *.tt call s:AdjustTT2Type()
"au! BufNewFile,BufRead *.tt setf tt2html
"au! BufNewFile,BufRead *.scala setf scala

"
" 「日本語入力固定モード」の動作モード
"inoremap <silent> <C-j> <C-^>
"https://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-japanese/ime-control
let IM_CtrlMode = 0
let IM_CtrlBufLocalMode = 1
" 「日本語入力固定モード」切替キー
"inoremap <silent> <C-j> <C-^><C-r>=IMState('FixMode')<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
