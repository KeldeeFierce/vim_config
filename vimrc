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
" Plug 'jiangmiao/auto-pairs'
call plug#end()

" _______NERDTree_________
"
source ~/.vim/nerdtree.vim

"_______ALE________________
"
source ~/.vim/ale.vim

"_______CoC_______________
"
source ~/.vim/coc.vim

"_______Themes____________
"

highlight CocFloating ctermbg=black
colorscheme catppuccin_macchiato

nnoremap <c-f> :Files<CR>
