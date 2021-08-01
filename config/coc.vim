
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
nnoremap <silent><nowait> <leader>l  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <leader>cm  :<C-u>CocList mru<cr>
nnoremap <silent><nowait> <leader>cf  :<C-u>CocList files<cr>
nnoremap <silent><nowait> <leader>cn  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <leader>cp  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <leader>cr  :<C-u>CocListResume<CR>
