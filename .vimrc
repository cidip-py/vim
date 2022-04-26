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
set noswapfile
set nolist
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  "navigation
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
"status bar
  Plugin 'maximbaz/lightline-ale'
  Plugin 'itchyny/lightline.vim'
"themes
  Plugin 'morhetz/gruvbox'
  Plugin 'mhartington/oceanic-next'
  Plugin 'severij/vadelma'
  Plugin 'NLKNguyen/papercolor-theme'
" typing
Plugin 'alvan/vim-closetag'
Plugin 'tpope/vim-surround'


"IDE 
Plugin 'yggdroot/indentline'
Plugin 'vim-airline/vim-airline-themes'
"Autocomplete
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()

colorscheme vadelma

"files shtct
nnoremap <C-n> :NERDTree<CR>


"python 
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"C compiler
map <F8> :w <CR> :!gcc % -o %< && ./%< <CR>


"autoclose brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>


