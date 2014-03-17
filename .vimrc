set nocompatible
set encoding=utf-8

filetype plugin indent on
set hidden
set history=100

set background=dark
set selectmode=mouse
set vb
set laststatus=2
set showmode
set showcmd
set shortmess+=r
set wildmode=list:longest,full

" * Text Editing Display

syntax on
syn sync ccomment cComment minlines=30 maxlines=300
"syn sync fromstart
set so=2
set siso=2
set nowrap
set ruler
set showbreak=`
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set listchars=tab:>.,trail:-
set list

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set shiftround
set expandtab
set autoindent
set formatoptions=crq
set textwidth=80
set whichwrap=h,l,~,[,]
set foldmethod=indent
set foldlevel=20
set backspace=indent,eol,start

" cycle through buffers/files
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
" quick buffer list
nnoremap <C-B> :buffers<CR>:buffer<Space>

