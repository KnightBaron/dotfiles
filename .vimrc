" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"Plugin 'git://github.com/ciaranm/inkpot.git'
Plugin 'git://github.com/chriskempson/vim-tomorrow-theme.git'
"Plugin 'git://github.com/scrooloose/nerdcommenter.git'
"Plugin 'git://github.com/scrooloose/nerdtree.git'
"Plugin 'git://github.com/msanders/snipmate.vim.git'
"Plugin 'git://github.com/ervandew/supertab.git'
"Plugin 'git://github.com/scrooloose/syntastic.git'
"Plugin 'git://github.com/tpope/vim-surround.git'
"Plugin 'git://github.com/vim-scripts/taglist.vim.git'
"Plugin 'git://github.com/webframp/pysmell.vim.git'
"Plugin 'git://github.com/davidhalter/jedi-vim.git'
"Plugin 'git://github.com/fholgado/minibufexpl.vim.git'
" original repos on github
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'tpope/vim-rails.git'
Plugin 'bling/vim-airline'
"Plugin 'airblade/vim-gitgutter'
" Plugin 'mattn/emmet-vim'
" vim-scripts repos
"Plugin 'L9'
"Plugin 'FuzzyFinder'
"Plugin 'promela.vim'
" non github repos
"Plugin 'git://git.wincent.com/command-t.git'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"set nocompatible
set ignorecase
set nowrap
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set showmatch
set backspace=indent,eol,start  " Restore common backspace behavior

let mapleader=","

colorscheme Tomorrow-Night
set guifont=Monaco:h13
"set transparency=5

" window
"nmap <leader>sw<left>  :topleft  vnew<CR>
"nmap <leader>sw<right> :botright vnew<CR>
"nmap <leader>sw<up>    :topleft  new<CR>
"nmap <leader>sw<down>  :botright new<CR>
nmap <leader>swh  :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk    :topleft  new<CR>
nmap <leader>swj  :botright new<CR>

" buffer
"nmap <leader>s<left>   :leftabove  vnew<CR>
"nmap <leader>s<right>  :rightbelow vnew<CR>
"nmap <leader>s<up>     :leftabove  new<CR>
"nmap <leader>s<down>   :rightbelow new<CR>
nmap <leader>sh         :leftabove  vnew<CR>
nmap <leader>sl         :rightbelow vnew<CR>
nmap <leader>sk         :leftabove  new<CR>
nmap <leader>sj         :rightbelow new<CR>

" PySmell
autocmd FileType python setlocal omnifunc=pysmell#Complete

"Taken from http://vimcasts.org/episodes/running-vim-within-irb/
if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
 
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

" vim-airline
set laststatus=2

