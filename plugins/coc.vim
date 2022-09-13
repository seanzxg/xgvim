
" coc 不设置文本编辑失效
set hidden
set encoding=utf-8
set nobackup
set nowritebackup
set cmdheight=2
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
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction




let g:coc_snippet_next = '<tab>'
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
nmap \`  <Plug>(coc-fix-current)
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
" vim-expand-region plugin instead it
nmap <silent> <cr> <Plug>(coc-range-select)
xmap <silent> <cr> <Plug>(coc-range-select)

nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" list 

nnoremap <silent><nowait> \ll  :<C-u>CocList<cr>
nnoremap <silent><nowait> \lh  :<C-u>CocList helptags<cr>
nnoremap <silent><nowait> \lc  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> \lf  :<C-u>CocList files<cr>
nnoremap <silent><nowait> \lg  :<C-u>CocList grep<cr>
nnoremap <silent><nowait> \lw  :<C-u>CocList windows<cr>

" nnoremap <silent> \r  :<C-u>CocList -N mru -A<cr>
" nnoremap <silent><nowait> <leader>ls  :<C-u>CocList snippets<cr>
" nnoremap <silent><nowait> <leader>lq  :<C-u>CocList quickfix<CR>
" nnoremap <silent><nowait> <leader>ld  :<C-u>CocList diagnostics<cr>
" nnoremap <silent><nowait> <leader>le  :<C-u>CocList extensions<cr>
" nnoremap <silent><nowait> <leader>lb  :<C-u>CocList bookmark<cr>
" nnoremap <silent><nowait> <leader>lm  :<C-u>CocList mru<cr>
" nnoremap <silent><nowait> <leader>ln  :<C-u>CocNext<CR>
" nnoremap <silent><nowait> <leader>lp  :<C-u>CocPrev<CR>
" nnoremap <silent><nowait> <leader>lr  :<C-u>CocListResume<CR>
