source ~/.vim/.vimrc

" load coding addons
"execute pathogen#infect('bundle-code/{}')
call plug#begin('~/.vim/plugs')
Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
call plug#end()
"execute pathogen#infect('bundle-code-test/{}')

let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

let g:ycm_confirm_extra_conf=0
filetype on

" close auto-complete when done
let g:ycm_autoclose_preview_window_after_completion=1
