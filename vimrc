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
Bundle 'bling/vim-airline'
Bundle 'colorselector'
"Bundle 'minibufexpl.vim'
Bundle 'vim-less'
Bundle 'godlygeek/csapprox'
"Bundle 'TabBar'
Bundle 'ctrlp.vim'
Bundle 'scrooloose/nerdtree'

" -------------------------- 配色 -------------------------


" 开启语法高亮
syntax on


" 配色
colorscheme molokai

filetype plugin indent on    " required!

set laststatus=2
"let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_exclude_filename = []
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=0
let Powerline_symbols='fancy'
let g:bufferline_echo=0
set laststatus=2
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\




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

set guifont=Liberation_Mono_for_Powerline:h20
let g:airline_powerline_fonts = 1

let g:AirlineTheme="murmur"
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"设置代码缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4

"setup nerdtree 
let NERDTreeWinPos = 'right'
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

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
