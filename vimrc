" General
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
set splitbelow
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set hlsearch!
set signcolumn=yes
set clipboard=unnamedplus

" Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
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
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
call plug#end()

call maktaba#plugin#Detect()
call glaive#Install()
Glaive codefmt plugin[mappings]

" Plugin Settings
colorscheme dracula
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['~/.asdf/shims/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['~/.asdf/shims/pyls'],
    \ 'ruby': ['~/.asdf/shims/solargraph', 'stdio'],
    \ 'c': ['ccls'],
    \ 'cpp': ['ccls']
    \ }
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Keybindings
noremap <Space> <NOP>
map <Space> <Leader>
nnoremap <Leader><Space> :nohlsearch<CR>
nnoremap <Leader>l :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nmap <Leader>e :NERDTreeToggle<CR>
nmap <Leader>f :FormatCode<CR>
