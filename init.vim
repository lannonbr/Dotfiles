set shortmess+=I
set laststatus=2
filetype off

call plug#begin()

" Plugins

" Languages
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'kongo2002/fsharp-vim'
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'zah/nim.vim'
Plug 'JuliaLang/julia-vim'

" Text Objects
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-function'
Plug 'nelstrom/vim-textobj-rubyblock'

" Testing
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'janko-m/vim-test'

" Search & Autocomplete
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'matchit.zip'
Plug 'rstacruz/sparkup'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" UI
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/seoul256.vim'

" Other
Plug 'benekastah/neomake'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'vim-utils/vim-man'
Plug 'gorodinskiy/vim-coloresque'

call plug#end()

filetype plugin indent on
set number relativenumber
set ignorecase smartcase
syntax on
set noet ci pi sts=0 sw=4 ts=4
set incsearch
set noswapfile

colo seoul256

set colorcolumn=80
highlight ColorColumn ctermbg=8

augroup ruby
	autocmd!
	autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
augroup END

let g:startify_list_order = [
	\['recent files'], 'files',
	\['recent files in current directory'], 'dir' ]
let g:startify_custom_header = map(split(system('echo \"Welcome to NeoVim\" | cowsay'), '\n'), '"   ". v:val') + ['','']

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let mapleader = ','

" No more macros (for now)
nnoremap q <NOP>

" Switch through buffers
nnoremap <silent> <PageUp> :bprevious<CR>
nnoremap <silent> <PageDown> :bnext<CR>

" Removing arrow key functionality
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" Quick esc remap
inoremap jk <Esc>

" Neovim Terminal Leader mappings
tnoremap <leader>et <C-\><C-n>
nnoremap <leader>t :term<CR>

" Vanilla Leader mappings
nnoremap <leader>h :sp<CR>
nnoremap <leader>v :vsp<CR>
nnoremap <space><space> <C-w>w

nnoremap <leader>ev :split $MYVIMRC<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>o :e 

" Plugin Leader mappings
nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>r :!ruby %<CR>
nnoremap <leader>T :TestNearest<CR>
nnoremap <leader>s :!rspec<CR>
nnoremap <leader>cs :!reek %<CR>
nnoremap <leader>j :!jade -P %<CR>
