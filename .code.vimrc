source ~/.vim/.vimrc

" load coding addons
execute pathogen#infect('bundle-code/{}')

" close auto-complete when done
let g:ycm_autoclose_preview_window_after_completion=1
