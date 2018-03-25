"===============KeyBoardDvorak=======================================
no k d
no h j
no d h
no t k
no n l
no H J
no D H
no T K
no N L

"=============Remaps=====
nmap <F2> :w!<CR>
imap <F2> <ESC>:w!<CR>
:map! eu <ESC>
nmap ` :

"=============DefaultSets
set listchars=trail:~
set mouse=""
set noswapfile
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set number
set nocompatible
set syntax=on
syntax on

"=================Vundle=Settings=begin===================================

filetype off
set rtp+=~/.vim/Vundle.vim

call vundle#begin()
"=======js
Plugin 'pangloss/vim-javascript', {'for':'javascript'}
Plugin 'jelera/vim-javascript-syntax', {'for':'javascript'}
Plugin 'gavocanov/vim-js-indent', {'for':'javascript'}
Plugin 'othree/es.next.syntax.vim', {'for':'javascript'}
Plugin 'wizicer/vim-jison', {'for':'javascript'}
"=======js-end
Plugin 'tpope/vim-fugitive'
Plugin 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plugin 'StanAngeloff/php.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'kchmck/vim-coffee-script'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jwhitley/vim-literate-coffeescript'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

filetype plugin indent on

"=================Plugins=Settings=end===========================
"
"=================Theme=Settings=Begin===========================

set background=dark
colorscheme hybrid_material

let g:airline_theme = "onedark"
let g:NERDTreeMapOpenInTab = "="

let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

"=================Theme=Settings=End===============================

"=================Some=Settings====================================

"let g:gitgutter_highlight_lines = 1
"=======YCM=PY=SET=EXTRA==
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"=================Compile=C++======================================
autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++ -lglut -lGL -lGLU -lGLEW '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

map <C-n> :NERDTreeToggle<CR>
nmap s <Plug>(easymotion-s)
nmap f <Plug>(easymotion-s2)
