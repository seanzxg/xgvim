" startify
" 二进制网站
" http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
let g:startify_custom_header = [
        \'    ██╗   ██╗██╗███╗   ███╗███╗   ███╗███████╗██████╗     ██╗  ██╗ ██████╗ ',
        \'    ██║   ██║██║████╗ ████║████╗ ████║██╔════╝██╔══██╗    ╚██╗██╔╝██╔════╝ ',
        \'    ██║   ██║██║██╔████╔██║██╔████╔██║█████╗  ██████╔╝     ╚███╔╝ ██║  ███╗',
        \'    ╚██╗ ██╔╝██║██║╚██╔╝██║██║╚██╔╝██║██╔══╝  ██╔══██╗     ██╔██╗ ██║   ██║',
        \'     ╚████╔╝ ██║██║ ╚═╝ ██║██║ ╚═╝ ██║███████╗██║  ██║    ██╔╝ ██╗╚██████╔╝',
        \'      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ',
        \]
let g:startify_commands = [
        \ ':help',
        \ ]
let g:startify_bookmarks = [
            \ { 'ap': '~/work/kuaishou-frontend-ad-alliance-promoter' },
            \ { 'ac': '~/work/kuaishou-frontend-ad-alliance-activity' },
            \ { 'ss': '~/work/kuaishou-frontend-ad-ssp' },
            \ { 'so': '~/work/kuaishou-frontend-ad-ssp-operation' },
            \ { 'li': '~/work/kuaishou-frontend-ad-alliance-live' },
            \ { 'su': '~/learn/kuaishou-frontend-ad-alliance-supplier' },
            \ { 'c': '~/vim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Projects']      },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
let g:startify_custom_footer =
           \ ['', "    welcome to sean home. remember keys",
           \"    e:  creates an empty buffer",
           \"    i:  creates an empty buffer and jumps into insert mode",
           \"    q:  quits either the buffer or, if there is no other listed buffer left, Vim itself.",
           \"    s:  open in split",
           \"    v:  open in vertical split",
           \"    t:  open in tab",
           \"    <c-z> suspend vim and give you a shell",
           \"    fg back to vim",
           \ '']

