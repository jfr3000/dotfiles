call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'Shutnik/jshint2.vim'
Plug 'scrooloose/nerdtree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'bronson/vim-trailing-whitespace'
Plug 'digitaltoad/vim-pug'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'

call plug#end()

" Colors {{{
syntax enable           " enable syntax processing
colorscheme monokai
"
" Spaces & Tabs {{{
set tabstop=2
set expandtab           " use spaces for tabs
set softtabstop=2
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
set smartindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu

let loaded_matchparen = 1

" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
set runtimepath+=~/.vim/bundle/jshint2.vim/

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='eslint'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" [buffer number] followed by filename:
set statusline=[%n]\ %t

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:NERDTreeWinSize = 40
let g:NERDSpaceDelims = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_custom_ignore = {
  \ 'dir':  'dist',
\ }

nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

set splitbelow
set splitright

set laststatus=2

command -bar -nargs=* -complete=file -range=% -bang Write <line1>,<line2>write<bang> <args>
