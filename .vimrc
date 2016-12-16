set nocompatible
set autoread hidden
set backspace=indent,eol,start
set backupskip=/tmp/*,/private/tmp/*
set binary
set clipboard=unnamed
set colorcolumn=80
set encoding=utf-8 nobomb
set esckeys
set exrc
set gdefault
set hlsearch ignorecase incsearch
set laststatus=2
set lazyredraw
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set modeline
set mouse=a
set noeol
set noerrorbells
set nostartofline
set cursorline ruler showcmd title showmode
set secure
set autoindent shiftwidth=2 tabstop=2 expandtab smarttab smartindent softtabstop=2
set shortmess=atI
set showmatch
set tags=./tags
set ttyfast
set wildmenu wildmode=longest,list,full wildignore=*.o,*.class,node_modules/**

syntax on

filetype indent plugin on

augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

let mapleader=","

autocmd! bufwritepost .vimrc source ~/.vimrc

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Dev
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'eslint/eslint'

" Lang
Plug 'pangloss/vim-javascript'

call plug#end()

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:syntastic_javascript_checkers = ['standard']

function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
    else
        set mouse=a
    endif
endfunc

noremap <leader>l :Align
noremap <leader>a :Ag! -Q <C-r>=expand('<cword>')<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
noremap <Leader>v :tabnew $MYVIMRC<CR>
noremap <Leader>s :update<CR>
noremap <Leader>t :TagbarToggle<CR>
noremap <Leader>m @:
noremap <Leader>r :so $MYVIMRC<CR>
noremap <Leader>l :ls<CR>
noremap <Leader>m :call ToggleMouse()<CR>
noremap <Leader>x :set list number<CR>