augroup common
  autocmd!

  " 设置coc-explorer的根目录为vim-rooter的目录，保持一致
  autocmd BufEnter * let g:coc_explorer_global_presets = {'root': RooterPath()}
  autocmd WinEnter * call CloseIfLastWindow()

  " 实现保存自动引入头部和格式化引入
  " autocmd BufWritePre *.{ts,js,jsx,tsx} :call CocAction('runCommand', 'editor.action.organizeImport')
  " autocmd BufWritePre *.{ts,js,jsx,tsx} :call CocAction('runCommand', 'tsserver.executeAutofix')

  " 用于在重新获取焦点时自动检查文件是否在外部被更新
  autocmd FocusGained * checktime

  autocmd BufWinEnter * call s:OnBufEnter()
  " coc 注释 hilight
  autocmd FileType json syntax match Comment +\/\/.\+$+
  " 重新打开文件,回到上次鼠标悬停的位置
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  " 自动改变当前项目的目录
  autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! cd %:p:h | endif
  " 打开开屏页面，例如vim . or vim /dir
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | bd | exe 'Startify' | endif
  " easymotion 粘贴
  autocmd VimEnter * :EMCommandLineNoreMap <C-v> <Over>(paste)
  " 打开命令行不显示数字标识
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup end


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

" Set coc-explorer root directory to vim-rooter's path
function! RooterPath()
  let rooter_dir = get(b:, 'root_dir', '')
  if empty(rooter_dir)
    return expand('%:p:h')
  endif
  return rooter_dir
endfunction

function! CloseIfLastWindow()
  if winnr('$') == 1 && &filetype == 'coc-explorer'
    if tabpagenr('$') == 1
      qall!
    else
      tabclose
    endif
  endif
endfunction
