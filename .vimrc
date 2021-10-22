syntax on

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set noswapfile
set number relativenumber
set nu rnu
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow

set autochdir

" SEARCH DOWN INTO SUBFOLDERS
" don't think this works, need to look into it some more
set path+=**/*
set wildmenu
set termsize=11x0

" BEGIN PLUGINS
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugtive'
    Plug 'vim-airline/vim-airline'
    Plug 'https://github.com/ycm-core/YouCompleteMe.git'
    Plug 'https://github.com/kien/ctrlp.vim.git'
    Plug 'https://github.com/neovimhaskell/haskell-vim.git'
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'https://github.com/adelarsq/vim-matchit'    
    Plug 'https://github.com/tpope/vim-surround.git'
    Plug 'https://github.com/vimwiki/vimwiki'
    Plug 'chase/focuspoint-vim'
    Plug 'nikolvs/vim-sunbather'
    Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark
let mapleader = " "

" GIT FUGITIVE REMAPS
nmap <leader>gs :G<CR>
nmap <leader>gj :diffset //3<CR>
nmap <leader>gf :diffset //2<CR>

" REMAPPING WINDOW COMMANDS
nnoremap <leader>b :buffers<CR>
nnoremap <leader>m :make<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>pv :Lex <bar> :vertical resize 24<CR>
nnoremap <leader>t :terminal<CR> 

" AUTOCLOSE PARENTHESIS IN INSERT MODE
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

command! Tab2space execute "set tabstop=4 shiftwidth=4 expandtab | %retab!"
command! Space2tab execute "set tabstop=4 | set noexpandtab | %retab!"

" REMAPPING FOR MOVING AROUND WRAPPED LINES
vmap <C-j> gj
vmap <C-k> gk
vmap <C-4> g$
vmap <C-6> g^
vmap <C-0> g^
nmap <C-j> gj
nmap <C-k> gk
nmap <C-4> g$
nmap <C-6> g^
nmap <C-0> g^

" SPELLCHECK BINDINGS
nnoremap <leader>o :setlocal spell! spelllang=en_gb<CR>
hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f

" LINEWRAPPING FOR WRITING DOCUMENTS
nnoremap <leader>w :set wrap linebreak<CR>
nnoremap <leader>2 :set tabstop=2 softtabstop=2 shiftwidth=2

" WILDCARD STUFF
nnoremap <leader>n /<++><CR>ca<
nnoremap <leader>p i<++><ESC>

" MAPPINGS FOR C-LIKE COMMENTING
" TODO: add specific filetypes/different commenting
nnoremap <leader>c I//<ESC>
nnoremap <leader>cc ^xx

" Exist out of insert mode with double tap of direction
" leaving out l because lots of words do have double l
" would be irksome
inoremap jj <ESC>j
inoremap kk <ESC>k

