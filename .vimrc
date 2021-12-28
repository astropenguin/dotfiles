" settings
set clipboard=unnamed
set list
set listchars=tab:>-,space:.
set nobackup
set noswapfile
set noundofile
set number
set wrap

" key bindings
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

" plugin: iceberg
syntax enable
set termguicolors
set background=dark
colorscheme iceberg

" plugin: lightline
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme': 'iceberg'}
