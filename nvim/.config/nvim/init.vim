"Enable pathogen
execute pathogen#infect()

"plugins
nnoremap <F4> :MundoToggle<CR>
nnoremap <F2> :NERDTreeToggle<CR>
autocmd FileType vim let b:vcm_tab_complete = 'vim'
autocmd vimenter * colorscheme gruvbox

"Basic settings
filetype plugin indent on
set nowrap
set relativenumber
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

"remaps
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <Space> <Leader>

"Allow copy pasting between vim documents
set clipboard=unnamedplus

"Enable persistent undo
set undofile
set undodir=~/.config/nvim/undodir

"vim native color scheme
colorscheme elflord
