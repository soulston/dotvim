" .vimrc
" @soulston
"
" Common help
" Show/hide all characters
" :set list / :set nolist
"

" Bundles {{{

" Pathogen setup
runtime bundle/vim-pathogen/autoload/pathogen.vim
" Bundle: tpope/vim-pathogen
call pathogen#infect()
call pathogen#helptags()

" Bundle: tpope/vim-sensible
" Git
" Bundle: tpope/vim-fugitive
" Display
" Bundle: twerth/ir_black
" Bundle: bling/vim-airline

" }}}


" GENERAL

syntax on
filetype plugin indent on
set encoding=utf-8

" 1 tab == 2 spaces
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Mode indications
set showmode
set showcmd

" Line numbers
set number

" Backspace for normal people
set backspace=indent,eol,start

" Always show status
set laststatus=2

" Show whitespace
set list

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10


" COLOURS

" syntax enable
" set background=dark
" colorscheme solarized
colorscheme distinguished

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif

" vim-pathogen

" vim-airline
let g:airline_powerline_fonts = 1
