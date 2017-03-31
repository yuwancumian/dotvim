set nocompatible    "iMproved
filetype off        "required!
set nobackup
set noswapfile 

" let Vundle manage Vundle
" required!

set rtp+=~/.vim/bundle/vundle
call  vundle#begin()

" vim-scripts repos
Plugin 'gmarik/vundle'
"Plugin 'snipMate'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'junegunn/goyo.vim'
Plugin 'jQuery'
Plugin 'ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'colorselector'
Plugin 'argtextobj.vim'
Plugin 'ternjs/tern_for_vim'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'powerline/powerline'
Plugin 'groenewege/vim-less'
Plugin 'qpkorr/vim-bufkill'
Plugin 'edsono/vim-matchit'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'mhinz/vim-startify'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'justinj/vim-react-snippets'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
"Plugin 'svermeulen/vim-easyclip'
Plugin 'chriskempson/base16-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'posva/vim-vue'
Plugin 'mxw/vim-jsx'
Plugin 'Raimondi/delimitMate'
"Plugin 'thinca/vim-quickrun'
"Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'minibufexpl.vim'
call vundle#end()            " required
filetype plugin indent on

" 开启语法高亮
syntax on

" 配色
set t_Co=256
colorscheme chela_light

"set fillchars+=stl:\ ,stlnc:\
set backspace=2
set laststatus=2
set noshowmode
set encoding=utf-8

"set leader key
"let mapleader = ','
"let g:mapleader = ','

"let g:airline_powerline_fonts=1
set guifont=Source\ Code\ Pro\ for\ Powerline:h14 
"let g:Powerline_symbols='unicode'
"let g:Powerline_symbols = 'fancy'
"let Powerline_symbols='compatible'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '▶'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '◀'
let g:airline_symbols.linenr = '|'
let g:airline_symbols.branch = ''
autocmd VimEnter * AirlineToggleWhitespace
"let g:airline_theme='bubblegum'
let g:airline_theme='molokai'
" -------------------------- 配色 -------------------------
"显示行号
"set relativenumber 
set number 

set t_Co=256
hi Normal ctermbg=NONE

"统一成系统剪切板
set clipboard=unnamed

"切换paste
set pastetoggle="<F9>"

"切换相对数字和绝对数字
let g:NumberToggleTrigger="<F3>"

nnoremap <silent> <F8> :set nu!<CR>
"set tags+=$HOME."/vimtags/tags"

"自动缩排
set autoindent

set nofoldenable
"set foldmethod=syntax
set foldmethod=indent

"set showtabline=1
"set guioptions=e
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
noremap <D-8> :tabn 8<CR>
noremap <D-9> :tabn 9<CR>

"是否显示标尺
set ruler

"更改配色方案
set background=dark

" 设置代码缩进
set tabstop=2
set softtabstop=2
set shiftwidth=2  "使用 o 换行后的宽度
set expandtab "设置 tab 自动替换为空格

autocmd BufNewFile,BufRead *.js set noexpandtab tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd BufNewFile,BufRead *.vue set noexpandtab tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd BufNewFile,BufRead *.less set noexpandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.html set noexpandtab tabstop=2 shiftwidth=2 softtabstop=2

"设置tab和空格的显示字符
"set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<

"setup nerdtree 
let NERDTreeWinPos = 'left'
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
set guioptions-=L
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.pyc$','node_modules','dist','design']
"let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"


"set easymotion

nmap <Space> <Plug>(easymotion-s2)
map <Space>l <Plug>(easymotion-lineforward)
map <Space>j <Plug>(easymotion-j)
map <Space>k <Plug>(easymotion-k)
map <Space>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

let g:EasyMotion_smartcase = 1
nnoremap <F12> :exe ':silent !open -a /Applications/Google\ Chrome.app %'<CR>

"设置ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore = '\v[\/](node_modules|www|target|dist|design|doc|sketch)|(\.(swp|ico|git|svn|jpg|png|gif))$'

"设置ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


" 设置ycm
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'


" highlight current line
"set cursorline
"set cursorcolumn

au BufRead,BufNewFile *.js set syntax=jquery
au BufReadPost *.hbs set syntax=html

map <s-tab> :bp<cr>
map <tab> :bn<cr>


nnoremap <Left> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Right> <nop>
nnoremap , :
nnoremap > >>
nnoremap < <<
"inoremap <Left> <nop>
"inoremap <Up> <nop>
"inoremap <Down> <nop>
"inoremap <Right> <nop>
"nmap <Space> viw
noremap H ^
noremap L $
"交换标注快捷键' `
"nnoremap ' `
"nnoremap ` '

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
inoremap <c-j> <Up> 
inoremap <c-k> <Down>
inoremap <c-l> <Right>
inoremap <c-h> <Left>

"set Tab as emmet's trigger 
"let g:user_emmet_leader_key = '<Tab>'
"let g:use_emmet_complete_tag = 1

