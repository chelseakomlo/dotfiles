set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()            " required

filetype plugin indent on    " required
syntax enable

set tabstop=2
set shiftwidth=2
set softtabstop=2
