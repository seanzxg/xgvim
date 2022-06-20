call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" theme
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'posva/vim-vue'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'vim-airline/vim-airline'

" tool
Plug 'airblade/vim-rooter'
Plug 'easymotion/vim-easymotion'
Plug 'romainl/vim-cool'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'
Plug 'valloric/matchtagalways'
Plug 'tommcdo/vim-exchange'
Plug 'voldikss/vim-floaterm'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


" code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'liuchengxu/vim-which-key'
Plug 'seanzxg/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

call plug#end()
let mapleader=","
filetype plugin on
syntax on

" vimrc files
for s:path in split(glob('~/vim/config/*.vim'), "\n")
  exe 'source ' . s:path
endfor
for s:path in split(glob('~/vim/plugins/*.vim'), "\n")
  exe 'source ' . s:path
endfor


if has('gui_running')
  colorscheme solarized
else
  colorscheme gruvbox
endif


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
  \ 'coc-tabnine',
  \ ]

