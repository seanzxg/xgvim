" ctrlsf config
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }
let g:ctrlsf_winsize = '45%'
inoremap \[ <Esc>:CtrlSFToggle<CR>
nmap \[ :CtrlSFToggle<CR>
let g:ctrlsf_position = 'right'
let g:ctrlsf_mapping = {
      \"open"    : ["<CR>", "o"],
      \"openb"   : "O",
      \"split"   : "s",
      \"vsplit"  : "v",
      \"tab"     : "t",
      \"tabb"    : "T",
      \"popen"   : "",
      \"popenf"  : "p",
      \"quit"    : "q",
      \"next"    : "n",
      \"prev"    : "N",
    \ }
nnoremap \] <ESC>:CtrlSF ""<left>
