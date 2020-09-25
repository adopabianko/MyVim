set number
set nowrap
set encoding=utf-8

autocmd! bufwritepost .vimrc source %

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autochdir

set list listchars=tab:»·,trail:·

"search
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
map <CR> :nohl<CR>

"shortcut move to split
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

set cursorline

set title

filetype plugin on

" configuration airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"Indent Line
let g:indentLine_setColors = 0
let g:indentLine_color_term = 239

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'
  map <leader>f :Files<CR>
  map <C-P> :GFiles<CR>
  map <C-B> :Buffer<CR>

Plug '~/my-prototype-plugin'

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'vim-airline/vim-airline'

Plug 'Yggdroot/indentLine'

Plug 'morhetz/gruvbox'

Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-surround'

Plug 'mattn/emmet-vim'

Plug 'jiangmiao/auto-pairs'

Plug 'luochen1990/rainbow'
  let g:rainbow_active = 1

Plug 'EinfachToll/DidYouMean'

Plug 'ap/vim-css-color'

call plug#end()

set background=dark
syntax enable
colorscheme gruvbox
