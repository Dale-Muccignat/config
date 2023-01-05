call plug#begin('~/.vim/plugged')
Plug 'osyo-manga/vim-over'
Plug 'zhou13/vim-easyescape'
Plug 'preservim/nerdcommenter'
Plug 'jpalardy/vim-slime'
Plug 'mg979/vim-visual-multi'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'nvim-lua/completion-nvim'
"Plug 'ycm-core/YouCompleteMe'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'tpope/vim-fugitive'
"Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
"Plug 'roxma/nvim-completion-manager'  " optional
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'frazrepo/vim-rainbow'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim'
Plug 'SpaceVim/vim-hug-neovim-rpc'
Plug 'roxma/nvim-yarp'
Plug 'ervandew/supertab'
call plug#end()


filetype plugin on
let mapleader=","
let g:NERDCreateDefaultMappings = 1
let g:NERDCustomDelimiters = { 'julia' : { 'left' : '#', 'right' : '' } }
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>
silent! source $VIMRUNTIME/defaults.vim
"let g:airline_powerline_fonts = 1
"let g:airline_theme='murmur'
highlight! link SignColumn LineNr
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4
map <F1> :%s/\s\+$//e
map <F2> :OverCommandLine
map <F3> :VimtexCompile
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
let g:vimtex_view_method = 'zathura'

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
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=2
set conceallevel=2
let g:tex_conceal='abdmgs'

" Disable custom warnings based on regexp
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \]
let g:vimtex_quickfix_autoclose_after_keystrokes = 2

" Line Numbers
set number
set relativenumber

" Snippets

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"   
let g:UltiSnipsExpandTrigger='<s-tab>'
let g:UltiSnipsJumpForwardTrigger='<s-tab>'
let g:UltiSnipsJumpBackwardTrigger='<c-s-tab>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"" 
hi Conceal guibg=#1E1E2E guifg=#C5C8C6
autocmd FileType tex setlocal spell
set spelllang=en_au
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
hi clear SpellCap
hi SpellCap cterm=underline ctermfg=blue
hi clear SpellRare
hi SpellRare cterm=underline ctermfg=blue
hi clear SpellLocal
hi SpellLocal cterm=underline ctermfg=blue

" Folding
set foldmethod=indent
hi Folded guibg=#1E1E2E guifg=#C5C8C6

" Deoplete
" " Use deoplete.
let g:deoplete#enable_at_startup = 0
" This is new style
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" Catpuccin in lightline
set laststatus=2 
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
set noshowmode
