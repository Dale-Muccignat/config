call plug#begin('~/.vim/plugged')
Plug 'osyo-manga/vim-over'
Plug 'zhou13/vim-easyescape'
Plug 'preservim/nerdcommenter'
Plug 'jpalardy/vim-slime'
Plug 'mg979/vim-visual-multi'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'JuliaEditorSupport/julia-vim'
Plug 'tpope/vim-fugitive'
"Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
"Plug 'roxma/nvim-completion-manager'  " optional
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'frazrepo/vim-rainbow'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
filetype plugin on
let mapleader=","
let g:NERDCreateDefaultMappings = 1
let g:NERDCustomDelimiters = { 'julia' : { 'left' : '#', 'right' : '' } }
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>
silent! source $VIMRUNTIME/defaults.vim
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
highlight! link SignColumn LineNr
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4
map <F1> :%s/\s\+$//e
map <F2> :OverCommandLine
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors
"set foldmethod=indent
