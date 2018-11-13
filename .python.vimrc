source ~/.vim/.vimrc

" load Python addons
execute pathogen#infect('bundle-python/{}')

let g:pymode_python = 'python3'

" Python Indentation (PEP8)
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Flagging Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Auto-complete improvement
let g:ycm_autoclose_preview_window_after_completion=1
