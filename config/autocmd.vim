" vim: set sw=2 ts=2 sts=2 et tw=78 foldmarker={{,}} foldmethod=marker foldlevel=0:
augroup common
  autocmd!
  autocmd FocusGained * checktime
  " autocmd ColorScheme * call s:Highlight()
  autocmd BufWinEnter * call s:OnBufEnter()
  " coc 注释 hilight
  autocmd FileType json syntax match Comment +\/\/.\+$+
  " Highlight the symbol and its references when holding the cursor.
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

