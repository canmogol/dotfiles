" PATHOGEN
execute pathogen#infect()
syntax on
filetype plugin indent on

" NERDTREE
let NERDTreeDirArrows = 0
"autocmd VimEnter * NERDTree .
"autocmd FocusGained :execute wincmd p .
"autocmd VimEnter * NERDTreeTabsOpen .
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>:NERDTreeTabsOpen<CR>
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_smart_startup_focus = 2


" SYNTACTIC
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
set statusline+=\ %=%#warningmsg#
set statusline+=\ %=%{SyntasticStatuslineFlag()}
set statusline+=\ %=%*
let g:syntastic_cpp_clang_check_post_args = ""
let g:syntastic_c_clang_check_post_args = ""
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_checkers = ['php']
let g:syntastic_java_checkers = ['checkstyle']



" EDITOR SETTINGS
colorscheme delek
set number
set hlsearch
set incsearch


" STARTIFY 
"let g:startify_custom_header = map(split(system('fortune | cowthink '), '\n'), '"   ". v:val') + ['','']


" NEO COMPLETE
let g:neocomplete#enable_at_startup = 1
let g:neocomplcache_enable_at_startup = 1
"let g:acp_enableAtStartup = 1
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }

"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'


" TAG BAR
nmap <C-t> :TagbarToggle<CR>

" AIRLINE
let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_alt_sep = '|'


" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'







