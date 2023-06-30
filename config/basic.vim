" basic config
" 自适应不同语言的智能缩进
filetype indent on
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 自动重新读取文件，如果文件改变
set autoread
" 展示标题
set title
set autochdir
" indent
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
" 不折行
set nowrap
" 没有swap文件
set noswapfile
" 提升速度
" 这个正则引擎会导致打开文件失败
" set regexpengine=1
set noshowcmd
set synmaxcol=150
" 允许删除tab，line，超出start的插入
set backspace=indent,eol,start
set nocompatible

" basic ********************************
inoremap jj <ESC>
noremap H 0
noremap L $
noremap Y y$
noremap 0 ^

noremap j gj
noremap k gk

nnoremap U <C-r>
vnoremap < <gv
vnoremap > >gv

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


"Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
noremap <C-m> <C-W>o
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" insert mode ********************************
imap <C-p> <Up>
imap <C-n> <Down>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-l> <Right>
inoremap <C-e> <End>
inoremap <C-a> <C-o>^
inoremap <C-o> <C-o>o
inoremap <C-k> <C-o>O

" vmode mode ********************************
vnoremap <C-c> "+y

" command line mode ********************************
cnoremap <C-b> <S-Left>
cnoremap <C-f> <S-Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

tnoremap <Esc> <C-\><C-n>

nnoremap <leader>. :source $MYVIMRC<CR>
" nnoremap <leader>w :w<CR>
" window
nmap <leader>v :vsplit<cr>
nmap <leader>s :split<cr>

