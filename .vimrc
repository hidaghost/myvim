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


""" Use omni python complete
" autocmd FileType python set omnifunc=pythoncomplete#Complete


""" Setup Pathogen to manage plugins
""" mkdir -p ~/.vim/autoload ~/.vim/bundle
""" git clone git@github.com:tpope/vim-pathogen
""" cp vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/
""" then you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()


""" Settings for vim-powerline
""" cd ~/.vim/bundle
""" git clone git@github.com:Lokaltog/vim-powerline.git
" set laststatus=2


""" Settings for ctrlp
""" cd ~/.vim/bundle
""" git clone git@github.com:kien/ctrlp.vim.git
" let g:ctrlp_max_height = 30
" set wildignore+=*.pyc
" set wildignore+=*_build/*
" set wildignore+=*/coverage/*


""" Settings for python-mode
""" cd ~/.vim/bundle
""" git clone git@github.com:klen/python-mode.git
" map <Leader>g :call RopeGotoDefinition()<CR>
" let ropevim_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_rope_extended_complete = 1
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_syntax_builtin_objs = 0
" let g:pymode_syntax_builtin_funcs = 0
" map <Leader>b Oimport pdb; pdb.set_trace()    # Breakpoint<C-c>


""" Better navigating through omnicomplete options list
""" See http://stackoverflow.com/questions/2170023/how-to-map-keys...
" set completeopt=longest,menuone
" function! OmniPopup(action)
"   if pumvisible()
"       if a:action == 'j'
"           return "\<C-N>"
"       elseif a:action == 'k'
"           return "\<C-P>"
"       endif
"   endif
"   return a:action
"endfunction

" inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
" inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


""" Python folding
""" mkdir -p ~/.vim/ftplugin
""" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org...
" set nofoldenable


