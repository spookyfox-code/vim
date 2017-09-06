source ~/.vim/.vimrc

" load LaTeX addons
execute pathogen#infect('bundle-latex/{}')

let g:airline#extensions#vimtex#enabled = 1
command LC !pdflatex %

