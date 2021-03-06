
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          NeoVim init file loader                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
" Install Vim-Plug
""
if empty(glob("~/.config/nvim/autoload/plug.vim"))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


for f in split(glob("~/.config/nvim/config/*.vim"), "\n")
    exe "source" f
endfor
set nocompatible

" activate pathogen
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" launch NERDTree on open
nnoremap <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd w

" default sets
set hidden
set nolist
set relativenumber
set number
set ruler
set autoread
set cursorline
set visualbell
set history=100

" persistent undo
set undodir=~/.vimundo/
set undofile

" Make searching better
set gdefault      " Never have to type /g at the end of search / replace again
set ignorecase    " case insensitive searching (unless specified)
set smartcase
set hlsearch
nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching
set incsearch
set showmatch

" tabs & white spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nolist
set backspace=2

" split bar fill char
set fillchars+=vert:\ 

" statusline
set guifont=Inconsolata\ for\ Powerline:h25
let g:airline_powerline_fonts = 1
set laststatus=2 
autocmd VimEnter * AirlineTheme luna

" highlight active line or column
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
":hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" navigate between split views
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

