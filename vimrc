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
Bundle 'colorselector'
"Bundle 'minibufexpl.vim'
Bundle 'vim-less'
Bundle 'TabBar'
Bundle 'ctrlp.vim'
Bundle 'scrooloose/nerdtree'

" -------------------------- 配色 -------------------------
" 配色

colorscheme molokai 

filetype plugin indent on    " required!



"显示行号
set nu

set t_Co=256
hi Normal ctermbg=NONE


"自动缩排
set autoindent

"是否显示标尺
set ruler

"更改配色方案
set background=dark

"设置代码缩进
set tabstop=2
set softtabstop=2
set shiftwidth=2

"setup nerdtree 
let NERDTreeWinPos = 'right'
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"设置ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" highlight current line                                                                                                                                                                       
set cursorline
set cursorcolumn

au BufRead,BufNewFile *.js set syntax=jquery

map <s-tab> :bp<cr>
map <tab> :bn<cr>

map ,q :q!<CR>
map ,w :wq <CR>
imap jj <esc>

"set Tab as emmet's trigger 
"let g:user_emmet_leader_key = '<Tab>'
"let g:use_emmet_complete_tag = 1
