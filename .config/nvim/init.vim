if !exists("$SBVIM_CFG")
    let $SBVIM_CFG = 'default'
endif

let g:clang_format_cmd = 'clang-format'

let mapleader = " "

set expandtab
set incsearch
set mouse+=a
set nobackup
set noswapfile
set nowrap
set number relativenumber
set shiftwidth=4 smarttab
set smartcase
set smartcase
set smartindent
set splitbelow
set splitright
set t_vb=
set tabstop=4 softtabstop=4
set undodir=~/.vim/undodir
set undofile
set visualbell

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'andymass/vim-matchup'
  Plug 'chase/focuspoint-vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'https://github.com/kien/ctrlp.vim.git'
  Plug 'https://github.com/ternjs/tern_for_vim.git'
  Plug 'https://github.com/vimwiki/vimwiki'
  Plug 'https://github.com/ycm-core/YouCompleteMe.git'
  Plug 'johejo/gomod.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mattn/emmet-vim'
  Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
  Plug 'morhetz/gruvbox'
  Plug 'puremourning/vimspector'
  Plug 'ray-x/go.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'nvim-lua/plenary.nvim' " required dependency
  Plug 'jakemason/ouroboros'
call plug#end()

let g:init_work = expand('~/.config/nvim/init_work.vim')
if filereadable(g:init_work)
    execute 'source' fnameescape(g:init_work)
endif

nnoremap <leader>sv :source $MYVIMRC<CR>

" FZF mappings
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!*.xcconfig" --glob "!*.git"'
nnoremap <leader>ff :Files<CR>
nnoremap <leader>gf :GFiles<CR>
nnoremap <leader>bf :Buffers<CR>
nnoremap <leader>rg :Rg<CR>

colorscheme gruvbox
set background=dark

" REMAPPING WINDOW COMMANDS
nnoremap <leader>vv :wincmd v<CR>
nnoremap <leader>ss :split<CR>
nnoremap <leader>t :terminal<CR>
nnoremap <leader>vrc :sp ~/.config/nvim/init.vim<CR>
nnoremap <leader>brc :sp ~/.bashrc<CR>

" AUTOCLOSE PARENTHESIS IN INSERT MODE
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

command! Tab2space execute "set tabstop=4 shiftwidth=4 expandtab | %retab!"
command! Space2tab execute "set tabstop=4 | set noexpandtab | %retab!"

" SPELLCHECK BINDINGS
nnoremap <leader>o :setlocal spell! spelllang=en_gb<CR>
hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f
nnoremap zz 1z=

" LINEWRAPPING FOR WRITING DOCUMENTS
nnoremap <leader>w :set wrap! linebreak!<CR>
nnoremap <leader>2 :set tabstop=2 softtabstop=2 shiftwidth=2

" WILDCARD STUFF
nnoremap <leader>n /<++><CR>ca<
nnoremap <leader>p i<++><ESC>

let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do VimspectorShowOutput

" VIMWIKI MARKDOWN
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" YCM Options
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_python_binary_path = 'python3'
let g:ycm_server_python_interpreter = 'python3'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:python3_host_prog = '/usr/bin/python3'

nnoremap <silent> <leader>gt :YcmCompleter GetType<CR>
nnoremap <silent> <leader>fi :YcmCompleter FixIt<CR>
nnoremap <silent> <leader>ygg :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>ygi :YcmCompleter GoToImplementation<CR>
nnoremap <silent> <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <silent> <leader>ygD :YcmCompleter GoToDeclaration<CR>
nnoremap <silent> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <silent> <leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <leader>rne :YcmCompleter RefactorRename<Space>
nnoremap <leader>ln :lnext<CR>

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
nnoremap <leader>f :call ShowFuncName()<CR>

" ============================ C++ stuff ============================

" Switch between header and implemetation files
autocmd! Filetype c,cpp,h,hpp map<buffer> <C-e> :Ouroboros<CR>

" Code snippets and helpers
nnoremap <leader>inc i#include <><ESC>i
nnoremap <leader>linc i#include ""<ESC>i
nnoremap <leader>dm V/{<CR>%d

" wrapping/unwrapping things in smart pointers/moves etc
nnoremap <leader>sp istd::shared_ptr<><ESC>ldt F<p
nnoremap <leader>up istd::unique_ptr<><ESC>ldt F<p
nnoremap <leader>mv istd::move()<ESC>ldiwhP

nnoremap <leader>usp :s/std::shared_ptr<\([^)]\+\)>/\1/<CR>
nnoremap <leader>uup :s/std::unique_ptr<\([^>]\+\)>/\1/<CR>
nnoremap <leader>umv :s/std::move(\([^)]\+\))/\1/<CR>

" convert to C++17 style, colon-separate nested namespace
nnoremap <leader>fns :s/ { namespace /::/g<CR>$%

" ===================================================================

nnoremap <leader>vw :split ~/vimwiki/index.md<CR>
nnoremap <leader>rln :set rnu!<CR>

" Fugitive stuff
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gg :Git<CR>
nnoremap <leader>gc :Git commit<CR>

" system clipboard yanking/pasting etc
vnoremap <leader>y "+y
nnoremap <leader>pp "+p
nnoremap <leader>yf ggVG"+y<C-o>

nnoremap <leader>chw :!chmod u+w %<CR>

function! RunGoFmt()
   let l:current_file = expand('%')
   execute 'silent !gofmt -w' shellescape(l:current_file)
endfunction

function! RunPyFmt()
   let l:current_file = expand('%')
   execute 'silent !python3 -m yapf -i --style={based_on_style: google, column_limit: 130, indent_width: 4}' shellescape(l:current_file)
endfunction

function! RunClangFormat()
   let l:current_file = expand('%')
   execute 'silent !clang-format -i' shellescape(l:current_file)
endfunction

autocmd BufWritePre * %s/\s\+$//e " strip whitespace

augroup Formatting
    autocmd!
    autocmd BufWritePost :%s/\t/    /g
    autocmd BufWritePost *.cpp,*.hpp call RunClangFormat()
    autocmd BufWritePost *.go call RunGoFmt()
    autocmd BufWritePost *.py call RunPyFmt()
augroup END

nnoremap <leader>sf ggjVG:sort<CR>
nnoremap <leader>sip vip:sort<CR>
nnoremap <leader>so :%sort<CR>

nnoremap <leader>rt :!make run-test<CR>
