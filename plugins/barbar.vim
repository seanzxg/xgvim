
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
