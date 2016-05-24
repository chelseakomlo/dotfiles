set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'fatih/vim-go'
" need to update to 7.3.598+ Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

set number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cursorline
set showmatch

set backspace=2 " make backspace work like most other apps

set nobackup
set nowritebackup

let g:syntastic_javascript_checkers = ['eslint']
