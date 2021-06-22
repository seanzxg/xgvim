call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-rooter'
Plug 'easymotion/vim-easymotion'
Plug 'romainl/vim-cool'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'romgrk/barbar.nvim'
call plug#end()
let mapleader=","

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

" 提升速度
" 这个正则引擎会导致打开文件失败
" set regexpengine=1
set noshowcmd
set synmaxcol=150

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

nnoremap <leader>. :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
" window
nmap <leader>v :vsplit<cr>
nmap <leader>s :split<cr>


" plugins ********************************
" gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>
nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

"  coc.nvim
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-emmet',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-svg',
  \ 'coc-snippets',
  \ 'coc-explorer',
  \ 'coc-lists',
  \ 'coc-eslint',
  \ 'coc-vetur',
  \ 'coc-stylelint',
  \ ]
" coc 不设置文本编辑失效
set hidden
set encoding=utf-8
set nobackup
set nowritebackup
set cmdheight=4
set updatetime=300
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" tab 语法提示
inoremap <silent><expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
vmap <C-j> <Plug>(coc-snippets-select)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" 重命名
nmap <leader>r <Plug>(coc-rename)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>a  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>`  <Plug>(coc-fix-current)
" Replace all of current word
nnoremap <leader>w :%s/\<<C-r><C-w>\>//g<left><left>
" nmap <leader>f <Plug>(coc-refactor)
" nmap <leader>a <Plug>(coc-codelens-action)
xmap <leader>x  <Plug>(coc-convert-snippet)
nmap <leader>d  <Plug>(coc-diagnostic-info)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
nmap <silent> <cr> <Plug>(coc-range-select)
xmap <silent> <cr> <Plug>(coc-range-select)

nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" list 
" nnoremap <silent> \r  :<C-u>CocList -N mru -A<cr>
nnoremap <silent><nowait> <leader>cs  :<C-u>CocList snippets<cr>
nnoremap <silent><nowait> <leader>cq  :<C-u>CocList quickfix<CR>
nnoremap <silent><nowait> <leader>cd  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <leader>ce  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <leader>cb  :<C-u>CocList bookmark<cr>
nnoremap <silent><nowait> <leader>cc  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <leader>cm  :<C-u>CocList mru<cr>
nnoremap <silent><nowait> <leader>cf  :<C-u>CocList files<cr>
nnoremap <silent><nowait> <leader>cn  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <leader>cp  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <leader>cr  :<C-u>CocListResume<CR>

" easymotion
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)


" vim-root config
let g:rooter_patterns = ['.git']

" barbar.nvim
nnoremap <leader>q :BufferClose<CR>
nnoremap <leader>p :BufferPick<CR>
nnoremap <silent>    <leader>1 :BufferGoto 1<CR>
nnoremap <silent>    <leader>2 :BufferGoto 2<CR>
nnoremap <silent>    <leader>3 :BufferGoto 3<CR>
nnoremap <silent>    <leader>4 :BufferGoto 4<CR>
nnoremap <silent>    <leader>5 :BufferGoto 5<CR>
nnoremap <silent>    <leader>6 :BufferGoto 6<CR>
nnoremap <silent>    <leader>7 :BufferGoto 7<CR>
nnoremap <silent>    <leader>8 :BufferGoto 8<CR>
nnoremap <silent>    <leader>9 :BufferGoto 9<CR>
" barbar.nvim
" 用 m/M 来切换buffer
noremap m :BufferNext<CR>
noremap M :BufferPrevious<CR>
let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = 'number'
let bufferline.letters = 'asdfjklghnmxcvbziowerutyqp'


let bufferline = {}

" Show a shadow over the editor in buffer-pick mode
let bufferline.shadow = v:true

" Enable/disable icons
let bufferline.icons = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
"
" NOTE disabled by default because this might cause E541 (too many items)
"      if you have many tabs open
let bufferline.clickable = v:true

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters = 
  \ 'asdfjkl;ghnmxcbziowerutyqpASDFJKLGHNMXCBZIOWERUTYQP'

let bg_current = get(nvim_get_hl_by_name('Normal',     1), 'background', '#000000')
let bg_visible = get(nvim_get_hl_by_name('TabLineSel', 1), 'background', '#000000')
let bg_inactive = get(nvim_get_hl_by_name('TabLine',   1), 'background', '#000000')

" For the current active buffer
hi default link BufferCurrent      Normal
" For the current active buffer when modified
hi default link BufferCurrentMod   Normal
" For the current active buffer icon
hi default link BufferCurrentSign  Normal
" For the current active buffer target when buffer-picking
exe 'hi default BufferCurrentTarget   guifg=red gui=bold guibg=' . bg_current

" For buffers visible but not the current one
hi default link BufferVisible      TabLineSel
hi default link BufferVisibleMod   TabLineSel
hi default link BufferVisibleSign  TabLineSel
exe 'hi default BufferVisibleTarget   guifg=red gui=bold guibg=' . bg_visible

" For buffers invisible buffers
hi default link BufferInactive     TabLine
hi default link BufferInactiveMod  TabLine
hi default link BufferInactiveSign TabLine
exe 'hi default BufferInactiveTarget   guifg=red gui=bold guibg=' . bg_inactive


" For the shadow in buffer-picking mode
hi default BufferShadow guifg=#000000 guibg=#000000



" startify

" 二进制网站
" http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
let g:startify_custom_header = [
        \'    ██╗   ██╗██╗███╗   ███╗███╗   ███╗███████╗██████╗     ██╗  ██╗ ██████╗ ',
        \'    ██║   ██║██║████╗ ████║████╗ ████║██╔════╝██╔══██╗    ╚██╗██╔╝██╔════╝ ',
        \'    ██║   ██║██║██╔████╔██║██╔████╔██║█████╗  ██████╔╝     ╚███╔╝ ██║  ███╗',
        \'    ╚██╗ ██╔╝██║██║╚██╔╝██║██║╚██╔╝██║██╔══╝  ██╔══██╗     ██╔██╗ ██║   ██║',
        \'     ╚████╔╝ ██║██║ ╚═╝ ██║██║ ╚═╝ ██║███████╗██║  ██║    ██╔╝ ██╗╚██████╔╝',
        \'      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ',
        \]
let g:startify_commands = [
        \ ':help',
        \ ]
let g:startify_bookmarks = [
            \ { 'ap': '~/work/kuaishou-frontend-ad-alliance-promoter' },
            \ { 'ac': '~/work/kuaishou-frontend-ad-alliance-activity' },
            \ { 'ss': '~/work/kuaishou-frontend-ad-ssp' },
            \ { 'so': '~/work/kuaishou-frontend-ad-ssp-operation' },
            \ { 'li': '~/work/kuaishou-frontend-ad-alliance-live' },
            \ { 'su': '~/learn/kuaishou-frontend-ad-alliance-supplier' },
            \ { 'c': '~/vim-config/vimrc' },
            \ { 'z': '~/.zshrc' },
            \ ]
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Projects']      },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
let g:startify_custom_footer =
           \ ['', "    welcome to sean home. remember keys",
           \"    e:  creates an empty buffer",
           \"    i:  creates an empty buffer and jumps into insert mode",
           \"    q:  quits either the buffer or, if there is no other listed buffer left, Vim itself.",
           \"    s:  open in split",
           \"    v:  open in vertical split",
           \"    t:  open in tab",
           \"    <c-z> suspend vim and give you a shell",
           \"    fg back to vim",
           \ '']


" autocmd
augroup common
  " coc 注释 hilight
  autocmd FileType json syntax match Comment +\/\/.\+$+
  autocmd BufWinEnter * call s:OnBufEnter()
  " 文件树打开的时候，调用fzf不在文件树的buffer打开
  autocmd BufEnter * if bufname('#') =~ 'coc-explorer' && bufname('%') !~ 'coc-explorer' && winnr('$') > 1 | b# | exe "normal! \<c-w>\<c-w>" | :blast | endif
  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " :set autochdir
  " 重新打开文件,回到上次鼠标悬停的位置
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  " 自动改变当前项目的目录
  autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! cd %:p:h | endif

  autocmd VimEnter * sil! au! FileExplorer *
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | exe 'CocCommand explorer ' . d | endif
  " 打开开屏页面，例如vim . or vim /dir
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | bd | exe 'Startify' | endif
  " easymotion
  autocmd VimEnter * :EMCommandLineNoreMap <C-v> <Over>(paste)
augroup END

function! s:OnBufEnter()
  let name = bufname(+expand('<abuf>'))
  " quickly leave those temporary buffers
  if &previewwindow || name =~# '^term://' || &buftype ==# 'nofile' || &buftype ==# 'help'
    if !mapcheck('q', 'n')
      nnoremap <silent><buffer> q :<C-U>bd!<CR>
    endif
  elseif name =~# '/tmp/'
    setl bufhidden=delete
  endif
  unlet name
endfunction