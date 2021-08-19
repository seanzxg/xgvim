call which_key#register('<Space>', "g:which_key_map") 
let g:which_key_timeout = 100
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}
nnoremap <silent> <Space> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Space> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
let g:which_key_map =  {}
let g:which_key_sep = ':'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


let g:which_key_map.w = {
      \ 'name' : 'Windows' ,
      \ 'o' : ['<C-W>o'     , '唯一窗口']          ,
      \ 'c' : ['<C-W>c'     , '关闭窗口']         ,
      \ 'h' : ['<C-W>5<'    , '向左 5']    ,
      \ 'j' : [':resize +5'  , '向下 5']   ,
      \ 'l' : ['<C-W>5>'    , '向右 5']   ,
      \ 'k' : [':resize -5'  , '向上 5']      ,
      \ 'e' : ['<C-W>='     , '等窗口']        ,
      \ }
" b is for buffer
let g:which_key_map.b = {
      \ 'name' : 'Buffer' ,
      \ 'o' : [':BufferCloseAllButCurrent', '关闭其他所有'],
      \ 'ch' : [':BufferCloseBuffersLeft', '关左侧'],
      \ 'cr' : [':BufferCloseBuffersRight', '关右侧'],
      \ 'cp' : [':BufferCloseAllButPinned', '关闭其他除PIN'],
      \ 'od' : [':BufferOrderByDirectory', '目录排序'],
      \ 'ol' : [':BufferOrderByLanguage' , '语法排序'],
      \ 'ob' : [':BufferOrderByBufferNumber' , 'B数字排序'],
      \ 'ow' : [':BufferOrderByWindowNumber' , 'W数字排序'],
      \ }
