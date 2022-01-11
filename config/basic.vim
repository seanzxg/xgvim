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
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-l> <Right>
inoremap <C-e> <End>
inoremap <C-a> <C-o>^
inoremap <C-o> <C-o>o
inoremap <C-k> <C-o>O


" command line mode ********************************
cnoremap <C-b> <S-Left>
cnoremap <C-f> <S-Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <M-1> <C-\><C-n>1gt
tnoremap <M-2> <C-\><C-n>2gt
tnoremap <M-3> <C-\><C-n>3gt
tnoremap <M-4> <C-\><C-n>4gt
tnoremap <M-5> <C-\><C-n>5gt

" Neovim :terminal colors.
let g:terminal_color_0  = '#282828'
let g:terminal_color_1  = '#cc241d'
let g:terminal_color_2  = '#98971a'
let g:terminal_color_3  = '#d79921'
let g:terminal_color_4  = '#458588'
let g:terminal_color_5  = '#b16286'
let g:terminal_color_6  = '#689d6a'
let g:terminal_color_7  = '#a89984'
let g:terminal_color_8  = '#928374'
let g:terminal_color_9  = '#fb4934'
let g:terminal_color_10 = '#b8bb26'
let g:terminal_color_11 = '#fabd2f'
let g:terminal_color_12 = '#83a598'
let g:terminal_color_13 = '#d3869b'
let g:terminal_color_14 = '#8ec07c'
let g:terminal_color_15 = '#ebdbb2'


nnoremap <leader>. :source $MYVIMRC<CR>
" nnoremap <leader>w :w<CR>
" window
nmap <leader>v :vsplit<cr>
nmap <leader>s :split<cr>

" netrw
let g:netrw_chgwin = 2
let g:netrw_banner=0
let g:netrw_list_hide = ',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize=20
let g:netrw_liststyle=3
let g:netrw_localrmdir='rmtrash'
let g:netrw_bufsettings = "noma nomod nonu nobl nowrap ro nornu buftype=nofile"