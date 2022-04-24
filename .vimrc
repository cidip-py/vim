set number
set relativenumber
set ai
set bg=dark
set showmatch
set list
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
syntax on
set ignorecase
set smartcase
set nolist
call plug#begin()
  "navigation
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
"status bar
  Plug 'maximbaz/lightline-ale'
  Plug 'itchyny/lightline.vim'
"themes
  Plug 'morhetz/gruvbox'
  Plug 'mhartington/oceanic-next'
  Plug 'severij/vadelma'
" typing
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'


"IDE 
Plug 'yggdroot/indentline'

call plug#end()

colorscheme OceanicNext

"files shtct
nnoremap <C-n> :NERDTree<CR>


"python 
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>



"autoclose brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
