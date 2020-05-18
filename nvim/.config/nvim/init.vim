"Enable pathogen
execute pathogen#infect()

"Toggle mundo with F4
nnoremap <F4> :MundoToggle<CR>

"Basic settings
filetype plugin indent on
set background=dark
set modeline
set modelines=5
set syntax=on 
set shellslash
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent
set expandtab
set ruler
set number
set showcmd
set incsearch
set hlsearch

"Allow copy pasting between vim documents
set clipboard=unnamedplus

"Enable persistent undo
set undofile
set undodir=~/.config/nvim/undodir

"vim-latex plugin settings
"let g:tex_flavor='latex'
"let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode -file-line-error-style $*'

"Enable solarized color scheme
let g:solarized_termtrans=1
" colorscheme solarized

"vim native color scheme
colorscheme elflord
