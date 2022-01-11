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
            \ { 'c': '~/vim/init.vim' },
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


" undotree
" Turn on persistent undo
" Thanks, Mr Wadsten: github.com/mikewadsten/dotfiles/
if has('persistent_undo')
    set undodir=~/.vim/undo//
    set undofile
    set undolevels=1000
    set undoreload=10000
endif
nnoremap <leader>u :UndotreeToggle<CR>

" ctrlsf config
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }
let g:ctrlsf_winsize = '45%'
" inoremap <C-t> <Esc>:CtrlSFToggle<CR>
nmap <F5> :CtrlSFToggle<CR>
let g:ctrlsf_position = 'right'
let g:ctrlsf_mapping = {
      \"open"    : ["<CR>", "o"],
      \"openb"   : "O",
      \"split"   : "s",
      \"vsplit"  : "v",
      \"tab"     : "t",
      \"tabb"    : "T",
      \"popen"   : "",
      \"popenf"  : "p",
      \"quit"    : "q",
      \"next"    : "n",
      \"prev"    : "N",
    \ }
nnoremap <leader>]] <ESC>:CtrlSF ""<left>

" barbar.nvim
" 用 m/M 来切换buffer
noremap m :BufferNext<CR>
noremap M :BufferPrevious<CR>
nnoremap <leader>q :BufferClose<CR>
nnoremap <leader>f :BufferPick<CR>
nnoremap <leader>p :BufferPin<CR>
nnoremap <leader>bo :BufferCloseAllButCurrent<CR>
nnoremap <silent>    <leader>1 :BufferGoto 1<CR>
nnoremap <silent>    <leader>2 :BufferGoto 2<CR>
nnoremap <silent>    <leader>3 :BufferGoto 3<CR>
nnoremap <silent>    <leader>4 :BufferGoto 4<CR>
nnoremap <silent>    <leader>5 :BufferGoto 5<CR>
nnoremap <silent>    <leader>6 :BufferGoto 6<CR>
nnoremap <silent>    <leader>7 :BufferGoto 7<CR>
nnoremap <silent>    <leader>8 :BufferGoto 8<CR>
nnoremap <silent>    <leader>9 :BufferGoto 9<CR>
nnoremap <silent>    <leader>0 :BufferLast<CR>

set termguicolors
highlight BufferCurrent             guibg=#5fd7ff guifg=#282a2e
highlight link BufferCurrentMod     BufferCurrent
highlight link BufferCurrentSign    BufferCurrent
highlight BufferCurrentTarget       guibg=#d7ff5f
highlight BufferInactive            guibg=#0087d7 guifg=#ffffff
highlight link BufferInactiveMod    BufferInactive
highlight link BufferInactiveSign   BufferInactive
highlight link BufferInactiveTarget BufferCurrentTarget
highlight link BufferVisible        BufferInactive
highlight link BufferVisibleMod     BufferVisible
highlight link BufferVisibleSign    BufferVisible
highlight link BufferVisibleTarget  BufferInactiveTarget
highlight BufferTabpages            guibg=#ff0000 guifg=#ff0000


" vim-root config
let g:rooter_patterns = ['.git']

" easymotion
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'

" vim-cool
let g:CoolTotalMatches = 1


" jsdoc
let g:jsdoc_allow_input_prompt = 0
let g:jsdoc_enable_es6 = 1
let g:jsdoc_access_descriptions = 2
let g:jsdoc_underscore_private = 1
let g:jsdoc_custom_args_regex_only = 1
let g:jsdoc_custom_args_hook = {
\ '^\(callback\|cb\)$': {
\   'type': ' {Function} ',
\   'description': 'Callback function'
\ },
\ '\(err\|error\)$': {
\   'type': '{Error}'
\ },
\ '^\(opt\|options\)$': {
\   'type': '{Object}'
\ },
\ 'handler$': {
\   'type': '{Function}'
\ },
\ '^\(n\|i\)$': {
\   'type': ' {Number} '
\ },
\ '^i$': {
\   'type': ' {Number} '
\ },
\ '^_\?\(is\|has\)': {
\   'type': ' {Boolean} '
\ },
\ '^arr$': {
\   'type': ' {Array} '
\ },
\ '^str$': {
\   'type': ' {String} '
\ },
\ '^e$': {
\   'type': ' {Event} '
\ },
\ 'el$': {
\   'type': ' {Element} '
\ },
\ '^node$': {
\   'type': ' {Element} '
\ },
\ '^o$': {
\   'type': ' {Object} '
\ },
\ '^obj$': {
\   'type': ' {Object} '
\ },
\ '^fn$': {
\   'type': ' {Function} '
\ },
\}

" netrw
let g:netrw_chgwin = 2
let g:netrw_banner=0
let g:netrw_list_hide = ',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize=20
let g:netrw_liststyle=3
let g:netrw_localrmdir='rmtrash'
let g:netrw_bufsettings = "noma nomod nonu nobl nowrap ro nornu buftype=nofile"


" matchtagalways
let g:mta_filetypes = {
    \ 'typescriptreact' : 1,
    \ 'javascriptreact' : 1,
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \}

" closetag
let g:closetag_filenames = '*.html,*.tsx,*.jsx'
let g:closetag_regions = {
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

