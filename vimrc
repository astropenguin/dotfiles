" .vimrc

" preferences
set list
set number
set wrap

" edit
set nobackup
set noswapfile
set clipboard+=unnamed
set virtualedit=onemore

" indent
set expandtab
set tabstop=4
set shiftwidth=4

" keymap
nmap <C-j> <C-d>
nmap <C-k> <C-u>
nmap <S-j> <C-f>
nmap <S-k> <C-b>
nnoremap <C-h> b
nnoremap <C-l> w
nnoremap <S-h> ^
nnoremap <S-l> $
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap Y y$
inoremap <silent> jj <ESC>

" plugin
call plug#begin()
Plug 'cocopon/iceberg.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'vim-jp/vimdoc-ja'
call plug#end()

" color scheme
syntax enable
set termguicolors
set background=dark
colorscheme iceberg

" status line
let g:lightline = {'colorscheme': 'iceberg'}
