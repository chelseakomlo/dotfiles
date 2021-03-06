set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'fatih/vim-go'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'c.vim'
Plugin 'tomasr/molokai'
Plugin 'rust-lang/rust.vim'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai
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

" spell check is useful
set spelllang=en
"set spellfile=$HOME/Dropbox/vim/spell/en.utf-8.add
set spell

" turn off spelling
map <F5> :setlocal nospell<CR>

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc> :nohlsearch<CR><Esc>

" Recommended Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" try this one out
set fo+=n

" c specific formatting
set cino=(0 "This sets your wrap for a function to the opening paragraph

" Syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

command Clear SyntasticReset

let g:syntastic_loc_list_height=4

" Syntastic JS
let g:syntastic_javascript_checkers = ['eslint']

" Syntastic C
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

" because one plugin isn't enough for c syntax highlighting
let g:C_UseTool_cmake   = 'yes'
let g:C_UseTool_doxygen = 'yes'

" rust syntax highlighting
let g:rustfmt_autosave = 1

" allows goto commands for rust
let g:ycm_rust_src_path =  '/home/chelseakomlo/.cargo/bin/rustc'

set textwidth=79
set colorcolumn=80

" for documentation
"set textwidth=72
"set colorcolumn=73

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
