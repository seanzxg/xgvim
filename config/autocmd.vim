" vim: set sw=2 ts=2 sts=2 et tw=78 foldmarker={{,}} foldmethod=marker foldlevel=0:
augroup common
  autocmd!
  autocmd FocusGained * checktime
  " autocmd ColorScheme * call s:Highlight()
  autocmd BufWinEnter * call s:OnBufEnter()
  " coc 注释 hilight
  autocmd FileType json syntax match Comment +\/\/.\+$+
  " explorer
  autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
  " explorer 文件树打开的时候，调用fzf不在文件树的buffer打开
  autocmd BufEnter * if bufname('#') =~ 'coc-explorer' && bufname('%') !~ 'coc-explorer' && winnr('$') > 1 | b# | exe "normal! \<c-w>\<c-w>" | :blast | endif
  " autocmd VimEnter * sil! au! FileExplorer *
  " autocmd BufEnter * let d = expand('%') | if isdirectory(d) | exe 'CocCommand explorer ' . d | endif
  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " 重新打开文件,回到上次鼠标悬停的位置
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  " 自动改变当前项目的目录
  " :set autochdir
  autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! cd %:p:h | endif
  " 打开开屏页面，例如vim . or vim /dir
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | bd | exe 'Startify' | endif
  " easymotion 粘贴
  autocmd VimEnter * :EMCommandLineNoreMap <C-v> <Over>(paste)
  " 打开命令行不显示数字标识
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup end


function! s:OnFileType(filetype)
  if index(['xml', 'wxml', 'html', 'wxss', 'css', 'scss', 'less'], a:filetype) >=0
    let b:coc_additional_keywords = ['-']
  endif
endfunction


" 便捷关闭buffer，q关闭
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


" function! s:OnTermOpen(buf)
"   setl nolist norelativenumber nonumber
"   if &buftype ==# 'terminal'
"     nnoremap <buffer> q :<C-U>bd!<CR>
"   endif
" endfunction

" augroup neovim
"   autocmd!
"   autocmd TermOpen  *  :call s:OnTermOpen(+expand('<abuf>'))
" augroup end

function! s:Highlight() abort
  if !has('gui_running') | hi normal guibg=NONE | endif
  call matchadd('ColorColumn', '\%81v', 100)
  hi ColorColumn ctermbg=magenta ctermfg=0 guibg=#333333
  hi HighlightedyankRegion term=bold ctermbg=0 guibg=#13354A
  hi CocCursorRange guibg=#b16286 guifg=#ebdbb2
  hi CursorLineNr  ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE
  hi CocErrorFloat   guifg=#fb4934 guibg=#504945
  hi CocWarningFloat guifg=#fabd2f guibg=#504945
  hi CocInfoFloat    guifg=#d3869b guibg=#504945
  hi CocHintFloat    guifg=#83a598 guibg=#504945
  hi CocMenuSel      ctermbg=237 guibg=#504945
  hi link CocErrorSign    GruvboxRedSign
  hi link CocWarningSign  GruvboxYellowSign
  hi link CocInfoSign     GruvboxPurpleSign
  hi link CocHintSign     GruvboxBlueSign
  hi link CocFloating     Pmenu
  hi link MsgSeparator    MoreMsg
endfunction
