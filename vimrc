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
Plugin 'neoclide/coc.nvim'
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
Plugin 'ianks/vim-tsx'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'powerline/powerline'
Plugin 'groenewege/vim-less'
Plugin 'qpkorr/vim-bufkill'
"Plugin 'edsono/vim-matchit'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'mhinz/vim-startify'
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
"Plugin 'ervandew/supertab'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'minibufexpl.vim'
call vundle#end()            " required
filetype plugin indent on

" 开启语法高亮
syntax on

" 配色
set t_Co=256
colorscheme molokai 

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


" +================================== coc.nvim  ======================================+ "
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
 
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
 
" don't give |ins-completion-menu| messages.
set shortmess+=c
 
" always show signcolumns
set signcolumn=yes
 
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
 
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
 
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
 
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
 
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
 
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
 
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
 
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
 
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
 
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
 
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
 
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
 
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
 
" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
 
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
 
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
 
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? \"\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? \"\<TAB>" :
"       \ coc#refresh()
"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" let g:coc_snippet_next = '<tab>'
" +=================================== tagbar =======================================+ "
 
let g:tagbar_width=30
" +================================== airline =======================================+ "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab
nmap <leader>q :bp<cr>:bd #<cr>
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = ''
" let g:airline_left_sep = ']'
" let g:airline_left_alt_sep = ')'
" let g:airline_right_sep = '['
" let g:airline_right_alt_sep = '('
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR"
" +=============================== NERD Commenter ====================================+ "
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
au FileType python let g:NERDSpaceDelims = 0
 
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
 
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
 
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
 
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
 
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
 
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
 
 
" +=============================== rainbow Parentheses ==============================+ "
" ((((((()))))))
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['#FFE66F', '#00FFFF', '#46A3FF', '#AAAAFF', '#FFB5B5'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\}


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

