source ~/.vim/.textedit.vimrc

" load AsciiDoc addons
execute pathogen#infect('bundle-asciidoc/{}')

" Set compiler and themes directory
autocmd Filetype asciidoc compiler asciidoctor
let g:asciidoctor_themes_dir='~/asciidoc/themes'

