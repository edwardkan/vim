execute pathogen#infect()
syntax on
filetype plugin indent on

" Vim Config
" -------------------------
filetype indent on
syntax on
filetype on
set wrap
set tabstop=4

" Color
set t_Co=256

" Serach Case Insensitive
set ignorecase
set smartcase
set hlsearch
set incsearch

" Indent
set smartindent
set shiftwidth=4
set expandtab

" Performance
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set ttyfast
set lazyredraw

" No backup files
set nobackup
set noswapfile

" Display number line
set number

" Highlight current line
set cursorline

" Auto-completion menu
set wildmenu

" Auto Reload File
set autoread

" AutoComplete Omnicomplete
" Continue typing to select desired item
set completeopt+=longest

" History
set history=1000 


" Custom syntax definition
" -------------------------

" Place cursor in { }
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

" Map Esc to the CapsLock key
" https://stackoverflow.com/questions/2176532/how-to-map-caps-lock-key-in-vim

au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Custom Ctrl Key Map
" ------------------------

" Ctrl+t open new tab
noremap <C-t> :tabnew<CR>

" Tab navigation Ctrl+j & Ctrl+k
noremap <C-j> :tabp<CR>
noremap <C-k> :tabn<CR>

" Quicker window movement
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-h> <C-w>h
nnoremap <S-l> <C-w>l


" Custom Function Key Map
" --------------------------

" C++ build with -g debug flag F3
map <F3> : !g++ -std=c++0x -g % && ./a.out <CR>
 
" C++ build & run F4
" map <F4> : !gcc % && ./a.out <CR>
map <F4> : !g++ -std=c++0x % && ./a.out <CR>

" Tab navigation F8 & F9
map <F8> gt
map <F7> gT

" Moving code of blocks
vnoremap < <gv
vnoremap > >gv


" CtrP config
" -------------------------
" http://kien.github.io/ctrlp.vim/#installation
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_root_markers = ['.project_root', '.git']
let g:ctrlp_use_caching = 1
let g:ctrlp_working_path_mode = 2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.svn
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=50
let g:ctrlp_clear_cache_on_exit = 0


" NerdTree config 
" ------------------------
nmap <F2> :NERDTreeToggle<CR>
noremap <C-x> :CtrlPBuffer<CR>


" AutoFormat
" ------------------------
noremap <F6> :Autoformat<CR>


" Syntastic config 
"----------------------------
"https://github.com/vim-syntastic/syntastic/blob/master/README.markdown
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" C++ syntax check
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 '


" Ctags 
"----------------------------
" https://github.com/soramugi/auto-ctags.vim
" let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
" set tags=tags;/

nmap <silent> <F5>
\ :!ctags -R
\ --languages=C++ .<CR>


" YouCompleteMe
"----------------------------
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1

" to use syntastic for errors should turn off YCM diagnostics 
let g:ycm_show_diagnostics_ui = 0

" will put icons in Vim's gutter on lines that have a diagnostic set.
" Turning this off will also turn off the YcmErrorLine and YcmWarningLine
" highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1


let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''
let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1
let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'


" Theme
" ----------------------------
colorscheme jellybeans


" Airline
" ----------------------------
" https://github.com/bling/vim-airline/blob/master/README.md
set laststatus=2
let g:airline_theme = 'dark'

" displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

" Show full file path on status line
let g:airline_section_c = '%F'

let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
let g:airline_powerline_fonts = 1


" AG vim 
" ---------------------------
" https://github.com/rking/ag.vim

" exclude tags file
let g:agprg='ag -S --nocolor --nogroup --column --ignore "tags"'


" Gundo 
"----------------------------  
" https://github.com/sjl/gundo.vim

nnoremap <F9> :GundoToggle<CR>

set undodir=~/.vim/tmp/undo// 
set undofile
set history=100
set undolevels=100

" Issue requre python 2.4 when version 2.7 is installed
if has('python3')
    let g:gundo_prefer_python3 = 1
endif


