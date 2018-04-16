execute pathogen#infect()
syntax on
filetype plugin indent on

" Vim Config
" -------------------------
filetype indent on
syntax on
filetype on
"set nowrap
set wrap
set tabstop=4
"set linebreak

" Color
set t_Co=256

"Serach Case Insensitive
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
"Auto-completion menu
set wildmenu
"Auto Reload File
set autoread
"set wildmode=list:longest
"AutoComplete Omnicomplete
" Continue typing to select desired item
set completeopt+=longest
" History
set history=1000 


"Key Map
" Ctrl+t open new tab
noremap <C-t> :tabnew<CR>

" Custom Key Map
" --------------------------

" C++ build with -g debug flag F3
map <F3> : !g++ -std=c++0x -g % && ./a.out <CR>
 
" C++ build & run F4
" map <F4> : !gcc % && ./a.out <CR>
map <F4> : !g++ -std=c++0x % && ./a.out <CR>


" Tab navigation F8 & F9
map <F8> gt
map <F7> gT

" Tab navigation Ctrl+j & Ctrl+k
noremap <C-j> :tabp<CR>
noremap <C-k> :tabn<CR>

" Moving code of blocks
vnoremap < <gv
vnoremap > >gv

" CtrP
" http://kien.github.io/ctrlp.vim/#installation
set runtimepath^=~/.vim/bundle/ctrlp.vim
" https://github.com/kien/ctrlp.vim/issues/181
let g:ctrlp_root_markers = ['.project_root', '.git']
let g:ctrlp_use_caching = 1
"let g:ctrlp_working_path_mode = ""
let g:ctrlp_working_path_mode = 2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.svn
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=50
let g:ctrlp_clear_cache_on_exit = 0

nmap <F2> :NERDTreeToggle<CR>
noremap <C-x> :CtrlPBuffer<CR>

" Theme
colorscheme jellybeans
let g:airline_theme = 'dark'


" Airline
" https://github.com/bling/vim-airline/blob/master/README.md
set laststatus=2
let g:airline_theme = 'dark'

" Show full file path on status line
let g:airline_section_c = '%F'



"syntastic config 
"https://github.com/vim-syntastic/syntastic/blob/master/README.markdown
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" C++ syntax check
let g:syntastic_cpp_config_file = '.clang_complete'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1
