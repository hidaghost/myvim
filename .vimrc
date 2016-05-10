""" .vimrc file by hida
""" 
"""
""" ====================================
""" Basic .vimrc settings
""" ====================================

""" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

""" Better copy & paste
" set pastetoggle=<F2>
" set clipboard=<F3>

""" Mouse and backspace
" set mouse=    " on OSX ALT and click
set bs=2      " make backspace behave like normal again

""" Easier moving of code blocks
vnoremap > >gv  " better indentation
vnoremap < <gv  "

""" Color scheme
set t_Co=256
" color wombat256mod

""" Enable syntax highlighting
""" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

""" Showing line numbers and length
set number  " show line numbers
set tw=119  " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=120
highlight ColorColumn ctermbg=233

""" Use spaces instead of Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

""" Make search case insensitive"
set hlsearch
set incsearch
set smartcase
" set ignorecase

""" Disable backup and swap files
" set nobackup
" set nowritebackup
" set noswapfile

""" ====================================
""" Python IDE Setup
""" ====================================
" autocmd FileType python set omnifunc=pythoncomplete#Complete
