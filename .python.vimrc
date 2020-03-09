source ~/.vim/.code.vimrc

" load Python addons
"execute pathogen#infect('bundle-python/{}')

" Python 3 compile options
let g:pymode_python = 'python3'
compiler pyunit
set makeprg=python3\ %

" displays a red bar at column 110
let g:pymode_options_max_line_length = 109

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
