set number
set relativenumber
set ai
set bg=dark
set guifont=Italic\14
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
  Plugin 'kaicataldo/material.vim', { 'branch': 'main' }
  Plugin 'dracula/vim', { 'name': 'dracula' }
  Plugin 'vimpostor/vim-prism'
  Plugin 'patstockwell/vim-monokai-tasty'

" typing
Plugin 'alvan/vim-closetag'
Plugin 'tpope/vim-surround'


"IDE 
Plugin 'yggdroot/indentline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'vim-airline-clock'
Plugin 'jiangmiao/auto-pairs'

"Autocomplete
"Plugin 'Valloric/YouCompleteMe'

"multiple cursor
"Plugin 'terryma/vim-multiple-cursors'
call vundle#end()

colorscheme vadelma


"files shtct
nnoremap <C-n> :NERDTree<CR>


"python 
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"C compiler
map <F8> :w <CR> :!gcc % -o %< && ./%< <CR>

imap <F8> :w <CR> :!gcc % -o %< && ./%< <CR>


"C++ compiler
autocmd filetype cpp nnoremap <F4> :w <CR>  :!g++ % -ggdb -o %:r <CR>
autocmd filetype cpp nnoremap<F5> :w <CR> :!g++ % -ggdb -o %:r && ./%:r <CR>

"fast scrolling

"autoclose brackets
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>

"multiple cursor mapping

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-a>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-o>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
