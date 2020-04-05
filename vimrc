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
set hidden
set splitbelow
set termguicolors
set hlsearch!

" Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'junegunn/fzf'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'KabbAmine/zeavim.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
call plug#end()

" Plugin Settings
colorscheme dracula
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['~/.asdf/shims/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['~/.asdf/shims/pyls'],
    \ 'ruby': ['~/.asdf/shims/solargraph', 'stdio'],
    \ }

" Keybindings
noremap <Space> <NOP>
map <Space> <Leader>
nnoremap <Leader><Space> :nohlsearch<CR>
nnoremap <Leader>l :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nmap <Leader>f :NERDTreeToggle<CR>
