""""""""""""""""""""""""""""""""""""""""
"" Keyboard-command related settings.
"" does not contain plugin-specific
"" settings, just 'global' ones.
""""""""""""""""""""""""""""""""""""""""

" fix arrow keys in console mode
if has('gui_running')
	" no need to mess with term
else
  set term=ansi
  fixdel
  if &term == "termname"
    set t_kb=^V<BS>
    fixdel
  endif
endif

" ;w saves a buffer
" map <Leader>w :w!<CR>

" ;q closes a vim-window
map <Leader>q :q!<CR>

" use C-j and C-k to 'bubble' lines (see
" http://vimcasts.org/episodes/bubbling-text/)
map <C-j> ddp
map <C-k> ddkP

" navigate around in buffers...
map <Leader>n :bnext<CR>
map <Leader>p :bprevious<CR>

" close all buffers but this one
map <Leader>bo :BufOnly<CR>

" switch ' and `, because:
" ' jumps to the start of the line where a mark is
" ` jumps to the exact location of a mark
" because jumping to the exact location is more useful,
" I like it to be closer to the home row, so I switch the keys.
noremap ' `
noremap ` '

nnoremap ;; :

map <Leader>bi :!bundle install<CR>

nnoremap j gj
nnoremap k gk
nnoremap ; :
inoremap jj <ESC>
inoremap jk <Esc>

" Move between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Block movement
nmap <tab> %
vmap <tab> %

" Insert/append a single character
nmap ,, i_<esc>r
nmap ;; a_<esc>r

" Folding
nnoremap <Space> za
vnoremap <Space> za

" Clear the search highlight
map <silent> \ :silent nohlsearch<cr>

" <F1> toggles fullscreen
map <F3> :NERDTreeToggle<cr>
nnoremap <silent> <F4> :TlistToggle<cr>
" <F5> in insert mode opens snippets for the filetype
nnoremap <silent> <F6> :YRShow<cr>
nnoremap <silent> <F7> :GundoToggle<cr>

" Bubble single lines (requires unimpaired.vim)
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines (requires unimpaired.vim)
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Leader mapping
" -----------------------------------------------------------------------------
map <leader>a :Ack

" Toggle wrapping in the current buffer
nmap <silent> <leader>wt :set wrap!<cr>

" Edit .vimrc and .vimrc.local
nmap <leader>evm <C-w><C-v><C-l>:e $MYVIMRC<cr>
nmap <leader>evl <C-w><C-v><C-l>:e ~/.vimrc.local<cr>

" Clear the search highlight
map <silent> \ :silent nohlsearch<cr>

" Collapse all multi-line occurrences of whitespace into one line
map <leader>CN :%s/\s\+$//e<CR>:%s/\n\{3,}/r/r/e<CR>

" Clean whitespace
map <leader>CW :%s/\s\+$//<cr>:let @/=''<cr>

" Retab My Authority.
map <silent><leader>CT :retab<cr>

" Reformat buffer
map <silent><Leader>fmt ggVG=''

" Open current buffer in a new split
map <leader>sc <C-w>v<C-w>l

" Toggle spelling hints
nmap <silent> <leader>ts :set spell!<cr>

" Reload ctags
map <leader>rt :!ctags --extra=+f -R *<cr><cr>

:iab dbg require 'ruby-debug'; debugger
