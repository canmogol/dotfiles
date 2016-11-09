"*** pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"*** syntastic
set runtimepath^=~/.vim/bundle/ctrlp.vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_typescript_tsc_fname = ''
" let g:syntastic_debug = 3
let g:syntastic_typescript_checkers = ['tslint', 'tsc']
" check on open might consume some cpu time if the file is large
" let g:syntastic_check_on_open = 1
" map  <C-m> :SyntasticCheck<CR>
let g:syntastic_check_on_wq = 0

"*** internal properties
colorscheme delek
set incsearch
set hlsearch

"*** neo complete cache enabled at startup
let g:neocomplete#enable_at_startup = 1

"*** disable indentation for paste
" set paste

"*** NERDTree starts at load time 
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * NERDTreeTabsOpen
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>:NERDTreeTabsOpen<CR>


"*** TagBar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=26
nmap <C-t> :TagbarToggle<CR>
"*** Airline - below line
"let AirlineTheme jellybeans 
"*** set lines
set number


