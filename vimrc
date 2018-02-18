execute pathogen#infect()
syntax on
filetype plugin indent on

" Enters Nerdtree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" utility settings
set t_Co=256 " fixes coloring issues
set clipboard=unnamed " alows for universal copy and paste
set nu " lines numbers
set mouse=a " enables mouse to click on files
set guicursor= " makes cursor default to the profile settings

" makes tab 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" colorscheme for editor and airline bar
colorscheme delek
let g:airline_theme='murmur'

" javascript autocompletion
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Autocompletion menu color
hi Pmenu ctermbg=grey ctermfg=white
hi PmenuSel ctermbg=blue ctermfg=white
