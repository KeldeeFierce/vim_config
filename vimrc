set number
set mouse=a
set termguicolors
set hlsearch
filetype on
filetype plugin on
filetype indent on

call plug#begin()
Plug 'tpope/vim-sensible'
" Plug 'davidhalter/jedi-vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

" _______NERDTree_________
"
let NERDTreeShowHidden=1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
"
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

nnoremap <c-f> :Files<CR>
"
"_______ALE________________
"
" let g:ale_linters = {'python': 'bandit'}
let g:ale_linters = {'python': ['flake8', 'pylint', 'bandit', 'mypy', 'pycodestyle']}
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace', 'black']}
let g:ale_lsp_suggestions = 1
let g:ale_fix_on_save = 1
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'

let g:ale_python_pylint_options = "--disable=C0114, --disable=C0116"

"
"_______CoC_______________
"
source ~/.vim/coc.vim

"_______Themes
"

highlight CocFloating ctermbg=black
colorscheme catppuccin_macchiato
