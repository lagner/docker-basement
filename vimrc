set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set wrap
set ai
set cin

set showmatch
set hlsearch
set ignorecase

set scrolloff=8
set nobackup
set noswapfile
set nowritebackup

set number
set numberwidth=4
set cursorline

" mkdir ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

set colorcolumn=90
highlight ColorColumn ctermbg=233

let mapleader = ","
" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>T <esc>:tabnew<CR>
map <Leader>t <esc>:bn<CR>
map <Leader>q <esc>:b#<bar>bd#<CR>

syntax on
set visualbell t_vb= 
set novisualbell 
set enc=utf-8
" показывать status line даже когда показывается только одно окно
set ls=2

set foldminlines=4
set foldnestmax=2
set foldlevelstart=99

set list
set listchars=tab:!·,trail:·

noremap <Leader>y "+y
noremap <Leader>p "+p
