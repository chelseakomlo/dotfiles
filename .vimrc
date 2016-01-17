set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/syntastic'

call vundle#end()            " required

filetype plugin indent on    " required
syntax enable

set tabstop=4
set shiftwidth=4
set expandtab
