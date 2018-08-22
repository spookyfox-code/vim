source ~/.vim/.vimrc

" load LaTeX addons
execute pathogen#infect('bundle-latex/{}')

let g:airline#extensions#vimtex#enabled = 1
command TEX !pdflatex %
command BIB !bibtex '%:r'

" LaTeX options
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf = 'pdflatex --synctex=-1 -src-specials -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='aux,bib,pdf'
let g:Tex_ViewRule_pdf =  'SumatraPDF -reuse-instance '

" Spell checking
set spell spelllang=en_us
