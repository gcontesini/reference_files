" Enable syntax highlighting
syntax on

" Enable line numbers (relative for easier movement)
set number

" Show matching parentheses and brackets
set showmatch

" Highlight current line
set cursorline

" Enable mouse support (useful in terminal Vim)
set mouse=a

" Enable clipboard integration (use system clipboard)
set clipboard=unnamedplus

" Display line and column number in status line
set ruler

" Use spaces instead of tabs, with an indent of 4 spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

" Enable auto-indentation
filetype indent on

" Search settings: highlight, incremental search, case insensitive unless uppercase in query
set hlsearch
set incsearch
set ignorecase
set smartcase

" Enable command line completion and command feedback
set wildmenu

" Enable undo files so undo history persists between sessions
set undofile
set undodir=~/.vim/undodir

" Faster scrolling
set scrolloff=5

" Set a nice color scheme
" https://github.com/sjl/badwolf
colorscheme badwolf

" Status line customization for mode, filename, position
set statusline=%f%m%r%h%w\ [%Y]\ %=%-14.(%l,%c%V%)\ %P

" Enable syntax folding based on indent
set foldmethod=indent
set foldlevelstart=80

" Map <leader> as "," for easier custom mappings
let mapleader = ","

" Enable clipboard
if has('clipboard')
  set clipboard=unnamedplus
endif

" Map ctrl+c && ctrl+v
nnoremap <C-v> "+p
nnoremap <C-v> "+p

" Quick save with <leader>w
nnoremap <leader>w :w<CR>

" Quick quit with <leader>q
nnoremap <leader>q :q<CR>

" Easy window navigation with Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use <Tab> and <Shift-Tab> to navigate completion menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Remember cursor position when reopening files
if has("autocmd")
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif

