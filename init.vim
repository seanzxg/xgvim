call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'alvan/vim-closetag'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'airblade/vim-rooter'
Plug 'ryanoasis/vim-devicons'
Plug 'valloric/matchtagalways'
Plug 'posva/vim-vue'
Plug 'tommcdo/vim-exchange'
Plug 'easymotion/vim-easymotion'
Plug 'romainl/vim-cool'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'liuchengxu/vim-which-key'
call plug#end()
let mapleader=","
filetype plugin on
syntax on

" vimrc files
for s:path in split(glob('~/vim/config/*.vim'), "\n")
  exe 'source ' . s:path
endfor


" gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_bold=0
let g:gruvbox_invert_selection=0
colorscheme gruvbox
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
  \ 'coc-cssmodules',
  \ 'coc-styled-components',
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
  \ 'coc-pairs',
  \ ]

