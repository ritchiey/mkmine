set nocompatible  " We don't want vi compatibility.

" Enable syntax highlighting
"syntax enable
syn on


" Enable line numbering
set number

" Always have a status line at the bottom of the buffer
set laststatus=2

" smarttab	a <Tab> in an indent inserts 'shiftwidth' spaces
set sta
set shiftwidth=2

" Command Height
set ch=2

" showcmd	show (partial) command keys in the status line
set sc

" visualbell	use a visual bell instead of beeping
set vb

" highlight search results
set hlsearch

" incremental search
set incsearch

" Enable hidden buffers so we can switch between files without having to save each time
set hidden

" Setup filename completion
set wildmode=longest,list,full
set wildmenu

filetype off  " Force reload (for Ubuntu)
filetype plugin indent on

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" alt+n or alt+p to navigate between entries in QuickFix
map <m-p> :cp 
map <m-n> :cn 

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

" Word-wise word copy
noremap! <C-Y> <Esc>klyiwjpa

set autoindent smartindent
set ruler

compiler rspec
nmap <Leader>fd :cf /tmp/autotest.txt<cr> :compiler rspec<cr>

