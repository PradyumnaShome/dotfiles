" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'megantiu/true.vim'

" The following are examples of different formats supported.
" Plugin 'flazz/vim-colorschemes'
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Valloric/YouCompleteMe'

" Track the engine.
" Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use Valloric/YouCompleteMe
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
" Plugin 'scrooloose/NERDTree'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineo=

set nocompatible              " be iMproved, required
filetype off                  " required

" enable 24bit true color
if (has("termguicolors"))
    set termguicolors
endif

syntax on
set t_Co=256
set cursorline

colorscheme true


set wrap
set hlsearch
set showmatch

" Show vertical bar at column 80 
set colorcolumn=81
highlight ColorColumn ctermbg=red guibg=red

set noerrorbells
set novisualbell

" Indentation
set smarttab
set ai
set si
set tabstop=4
set shiftwidth=4
set expandtab

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Display line numbers
set number

set laststatus=2
