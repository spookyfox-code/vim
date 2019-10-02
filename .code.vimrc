source ~/.vim/.vimrc

" load coding addons
execute pathogen#infect('bundle-code/{}')

let g:ycm_confirm_extra_conf=0
filetype on

" close auto-complete when done
let g:ycm_autoclose_preview_window_after_completion=1
