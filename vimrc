set nocompatible    " be iMproved
filetype off        " required!

" let Vundle manage Vundle
" required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" vim-scripts repos
Bundle 'gmarik/vundle'
Bundle 'snipMate'
Bundle 'mattn/emmet-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'junegunn/goyo.vim'
Bundle 'jQuery'
Bundle 'ack.vim'
Bundle 'TabBar'
Bundle 'ctrlp.vim'
"Bundle 'php.vim-for-php5'
" -------------------------- 配色 -------------------------
" solarized 配色

colorscheme icansee 

filetype plugin indent on    " required!



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

map <s-tab> :bp<cr>
map <tab> :bn<cr>


map ,q :q!<CR>
map ,w :wq <CR>
imap jj <esc>
