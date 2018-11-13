source ~/.vim/.vimrc

" load Python addons
execute pathogen#infect('bundle-python/{}')

let g:pymode_python = 'python3'

" Auto-complete improvement
let g:ycm_autoclose_preview_window_after_completion=1
