set nocompatible    " be iMproved
filetype off        " required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'mattn/emmet-vim'
" vim-scripts repos
Bundle 'jQuery'
Bundle 'ack.vim'
Bundle 'TabBar'
Bundle 'ZenCoding.vim'
Bundle 'ctrlp.vim'
Bundle 'php.vim-for-php5'
colorscheme icansee 

filetype plugin indent on    " required!

"---------------------------- 配色 -------------------------{{{2
""solarized 配色


"显示行号
set nu

"set t_Co=256
"hi Normal ctermbg=NONE

"自动缩排
set autoindent

"是否显示标尺
set ruler

"更改配色方案
set background=dark

"设置代码缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4

"设置ctrlp
let NERDTreeWinPos = 'right'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

au BufRead,BufNewFile *.js set syntax=jquery

imap <tab> <c-x><c-o> 
set omnifunc=javascriptcomplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
