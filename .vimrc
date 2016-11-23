set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'
" take a look at this one http://www.vim.org/scripts/script.php?script_id=213

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

map <F5> :setlocal spell! spelllang=en<CR>

" Recommended Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" try this one out
set fo+=n
set cino=(0 "This sets your wrap for a function to the opening paragraph

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic JS
let g:syntastic_javascript_checkers = ['eslint']

" Syntastic C
let g:syntastic_c_check_header = 1
let g:syntastic_c_check_headers = ['make', 'splint', 'gcc', 'clang']
let g:syntastic_c_remove_include_errors = 1

" issues using both vim-go and syntastic
let g:syntastic_go_checkers = ['golint', 'go', 'fmt', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

" vim becomes sluggish when editing go files
let g:go_highlight_structs = 0
let g:go_highlight_interfaces = 0
let g:go_highlight_operators = 0
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosav_enabled = ["vet", "golint", "errcheck"]

set textwidth=79
set colorcolumn=80
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

" consistent line wrapping is nice
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  let s = @/
  %s/\s\+$//e
  call cursor(l, c)
  let @/ = s
endfun
autocmd FileType c,cpp,js,javascript,java,php,ruby autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" strip trailing whitespace
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
