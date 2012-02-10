""""""""""""""""""""""""""""""""""""""""
"" Command-T settings
""""""""""""""""""""""""""""""""""""""""

" no need to explicitly define keybinding, Command-T sets <Leader>t binding by
" default
" map <leader>b :CommandTBuffer<cr>
map <leader>t :CommandT<cr>

" Always display and search dotfiles/dotdirectories
let g:CommandTAlwaysShowDotFiles = 1
let g:CommandTScanDotDirectores = 1

" Show the match window at the top of the screen rather than the bottom
let g:CommandTMatchWindowAtTop = 1
