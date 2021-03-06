" Globally applicable settings should be applied here, as well as anything else
" that needs to be loaded before the config files get executed.
"
" Make sure vim works with RVM: seehttp://gabebw.wordpress.com/2010/08/02/rails-vim-rvm-and-a-curious-infuriating-bug/ 
set shell=bash
" don't try to play nice with vi
set nocompatible

autocmd!

" turn filetype settings off so that stuff gets loaded from vundle
filetype off

" use vundle for package management
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" load bundles
runtime! bundles.vim

filetype on
filetype plugin indent on

" use ; for <Leader>
let mapleader = ";"

"" shortmess settings:
" f - use "(3 of 5)" instead of "(file 3 of 5)"
" i - use "[noeol]" instead of "[Incomplete last line]"
" l - use "999L, 888C" instead of "999 lines, 888 characters"
" m - use "[+]" instead of "[Modified]"
" n - use "[New]" instead of "[New File]"
" r - use "[RO]" instead of "[readonly]"
" x - use "[dos]" instead of "[dos format]", "[unix]" instead of "[unix
" format]", and "[mac]" instead of "[mac format]"
" t - truncate file message at the start if it is too long to fit on the
" command-line, "<" will appear in the left most column.
" T - trunctate other messages in the middle if they are too long to fit on
" the command line. "..." will appear in the middle.
" I - don't give the intro message when starting Vim.
set shortmess=filmnrxtTI


" turn on all filetype settings, syntax, etc.
filetype plugin indent on
syntax on


" load everything else in its own config file
runtime! config/**/*
"
" Include user's local vim config
let local_config = expand('~/.vimrc.local')
if filereadable(local_config)
  exe "source" local_config
endif

" Include user's machine vim config
let machine_config = expand('~/.vimrc.') . hostname()
if filereadable(machine_config)
  exe "source" machine_config
endif
