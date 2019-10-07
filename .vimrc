" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ap/vim-css-color'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'junegunn/fzf'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'isRuslan/vim-es6'
NeoBundle 'tikhomirov/vim-glsl'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'dense-analysis/ale'
NeoBundle 'maximbaz/lightline-ale'
NeoBundle 'itchyny/vim-gitbranch'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set nocompatible

filetype indent plugin on
syntax on

set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set expandtab
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F10>
set shiftwidth=2
set softtabstop=2
set expandtab
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
set backup
set backupdir=/private/tmp
set dir=/private/tmp
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set cursorline
set tabstop=8
set expandtab
set autoindent
set smartindent
set statusline+=%Fr
set paste
set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
set spell spelllang=en_us
set nospell
set t_Co=256

let g:lightline = {
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\     [ 'gitbranch' ],
\     [ 'readonly', 'absolutepath', 'modified' ] ],
\   'right': [ [ 'lineinfo' ],
\     [ 'percent' ],
\     [ 'fileformat', 'fileencoding', 'filetype' ],
\     [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]
\   ]
\ },
\ 'component_function': {
\   'gitbranch': 'gitbranch#name'
\ },
\ 'component': {
\   'charvaluehex': '0x%B'
\ }
\ }

let g:lightline.component_expand = {
\ 'linter_checking': 'lightline#ale#checking',
\ 'linter_warnings': 'lightline#ale#warnings',
\ 'linter_errors': 'lightline#ale#errors',
\ 'linter_ok': 'lightline#ale#ok'
\ }

let g:lightline.component_type = {
\ 'linter_checking': 'left',
\ 'linter_warnings': 'warning',
\ 'linter_errors': 'error',
\ 'linter_ok': 'left'
\ }

let g:ale_linters = {
\ 'javascript': ['standard']
\}
let g:ale_fixers = {
\ 'javascript': ['standard']
\}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

tnoremap <Esc> <C-\><C-n>

autocmd VimEnter * GitGutterEnable
autocmd VimEnter * GitGutterSignsEnable
autocmd BufWritePost * GitGutter
