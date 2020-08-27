" General
set nocompatible
set nu
syntax on
filetype on
filetype indent on
filetype plugin on
set shiftwidth=2
set tabstop=2
set expandtab
set nobackup
set noswapfile
set hidden
set wildmenu
set splitbelow
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set hlsearch!
set signcolumn=yes
set clipboard=unnamedplus
set undodir=~/.vim/undodir

" Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'junegunn/fzf'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'IN3D/vim-raml'
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-markdown'
Plug 'stephpy/vim-yaml'
Plug 'vim-crystal/vim-crystal'
call plug#end()

" Plugin Settings
colorscheme dracula
let g:deoplete#enable_at_startup = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Keybindings
noremap <Space> <NOP>
map <Space> <Leader>
nnoremap <Leader><Space> :nohlsearch<CR>
nmap <Leader>e :NERDTreeToggle<CR>
