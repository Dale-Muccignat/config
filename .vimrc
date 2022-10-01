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
Plug 'lervag/vimtex'
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
" VIMTEX
set encoding=utf-8
"set foldmethod=indent
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'general'

" Or with a generic interface:
"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","

" Line Numbers
set number
set relativenumber
