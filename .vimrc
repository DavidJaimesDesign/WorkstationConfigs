syntax on

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set nocompatible
set smartindent
set shiftwidth=4
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch
set mouse=a
set number relativenumber
set cursorcolumn
"set nonumber norelativenumber  " turn hybrid line numbers off
"set !number !relativenumber    " toggle hybrid line numbers
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"-------------- PLUGINS STARTS -----------------
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'inkarkat/vim-spellcheck'
Plugin 'kien/rainbow_parentheses.vim'

call vundle#end()  
"-------------- PLUGINS END --------------------
filetype plugin indent on
set tabstop=4


"----- GENERAL SETTINGS-------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:solarized_termcolors = 61
let g:solarized_termtrans = 2
set background=dark
colorscheme solarized

"------SPELLCHECK SETTINGS--------
set spell spelllang=en

"---------NERD-TREE SETTINGS----------
"nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
"let g:nerdtree_tabs_open_on_console_startup = 1


"-------- SYNTASTIC SETTINGS---------
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
    augroup END
"-------- TAGS SETTINGS --------------------------------
"let g:easytags_events = ['BufReadPost', 'BufWritePost']
"let g:easytags_async = 1
"let g:easytags_dynamic_files = 2
"let g:easytags_resolve_links = 1
"let g:easytags_suppress_ctags_warning = 1
"let g:tagbar_autoclose=2
"
"nmap <silent> <leader>b :TagbarToggle<CR>
"autocmd BufEnter * nested :call tagbar#autoopen(0)

"---------GIT SETTINGS--------------
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1



"----------DELIMITEMATE SETTINGS-----------------
let delimitMate_expand_cr = 1
augroup mydelimitMate
au!
au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
au FileType tex let b:delimitMate_quotes = ""
au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

"-----------TMUX SETTINGS--------------
let g:tmux_navigator_save_on_switch = 2
