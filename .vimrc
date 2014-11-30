" .vimrc
" @soulston
"
" Common help
" Show/hide all characters
" :set list / :set nolist

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


"====[ General ]=====
    syntax on
    filetype plugin indent on
    set encoding=utf-8
    set autoindent
    set expandtab
    set softtabstop=2
    set shiftwidth=2
    set nopaste

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======
    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list

"====[ Mode indications ]=====
    set showmode
    set showcmd

"====[ Line numbers ]=====
    set number

"====[ Backspace for normal people ]=====
    set backspace=indent,eol,start

" Always show status
    set laststatus=2

"====[ Time out on key codes but not mappings. Basically this makes terminal Vim work sanely ]=====
    set notimeout
    set ttimeout
    set ttimeoutlen=10

"====[ Key remappings ]=====
    nnoremap  ;  :
    nnoremap  :  ;

"====[ Colours scheme ]=====
    colorscheme distinguished

"====[ Set powerline fonrs for macvim ]=====
    if has("gui_running")
        let s:uname = system("uname")
        if s:uname == "Darwin\n"
            set guifont=Inconsolata\ for\ Powerline:h15
        endif
    endif

"====[ vim-pathogen ]=====

"====[ vim-airline ]=====
    let g:airline_powerline_fonts = 1

"====[ Make the 81st column stand out ]=====
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn', '\%81v', 100)

"====[ Highlight matches when jumping to next ]=====
    " OR ELSE just highlight the match in red...
    function! HLNext (blinktime)
        let [bufnum, lnum, col, off] = getpos('.')
        let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
        let target_pat = '\c\%#\%('.@/.'\)'
        let ring = matchadd('WhiteOnRed', target_pat, 101)
        redraw
        exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
        call matchdelete(ring)
        redraw
    endfunction

