call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" 解决updatePlugin失败的问题，
" let g:plug_url_format = 'git@github.com:%s.git'

" theme
Plug 'morhetz/gruvbox'
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
Plug 'voldikss/vim-floaterm'
Plug 'terryma/vim-expand-region'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'

" code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }


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


colorscheme gruvbox


"  coc.nvim
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-emmet',
  \ 'coc-html',
  \ 'coc-svg',
  \ 'coc-snippets',
  \ 'coc-explorer',
  \ 'coc-lists',
  \ 'coc-eslint',
  \ 'coc-pairs',
  \ 'coc-tabnine',
  \ ]

