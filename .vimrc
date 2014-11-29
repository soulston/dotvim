" .vimrc
" @soulston

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


" General
syntax on
filetype plugin indent on
set encoding=utf-8


" vim-pathogen

" vim-airline
let g:airline_powerline_fonts = 1
