" Vimrc 2020-04 after lockdown reinstall
" oriented toward using vim as a python ide-like
"

" more or less required
set nocompatible
set encoding=utf-8
filetype off		" required for vundle

" vundle stuff...
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" syntax highlight
syntax enable
let python_highlight_all = 1

" show line number
set number

" show matching parenthesis, brackets and somesuch
set showmatch

" enable code folding with spacebar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" proper PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ 	softtabstop=4
    \ 	shiftwidth=4
    \ 	textwidth=79
    \ 	expandtab
    \ 	autoindent
    \ 	fileformat=unix

" highlight and incremental search
set hlsearch
set incsearch

" auto indent
set autoindent

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" status line hacks...
set laststatus=2
hi User1 ctermfg=Blue ctermbg=White
hi User2 ctermfg=Black ctermbg=Yellow cterm=bold
hi User3 ctermfg=White ctermbg=Black

set statusline=
set statusline+=%2*\>>\%*
set statusline+=%1*\ %f\
set statusline+=%{&modified?'[+]':''}
set statusline+=%=
set statusline+=Line\ %3l/%-3L\ %*
set statusline+=%3*\ %{FugitiveStatusline()}\ %*

