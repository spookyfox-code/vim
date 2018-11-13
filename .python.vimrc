source ~/.vim/.code.vimrc

" load Python addons
execute pathogen#infect('bundle-python/{}')

let g:pymode_python = 'python3'
