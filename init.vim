set shortmess+=I
set laststatus=2
filetype off

call plug#begin()

"Plugins
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'itchyny/lightline.vim'
Plug 'benekastah/neomake'
Plug 'rstacruz/sparkup'
Plug 'kongo2002/fsharp-vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'scrooloose/nerdtree'
Plug 'bufexplorer.zip'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-function'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'matchit.zip'
Plug 'maksimr/vim-jsbeautify'
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'vim-utils/vim-man'
Plug 'janko-m/vim-test'
Plug 'gorodinskiy/vim-coloresque'
Plug 'mhinz/vim-signify'
Plug 'nelstrom/vim-textobj-rubyblock'

call plug#end()

filetype plugin indent on
set nu relativenumber
set ignorecase smartcase
syntax on
set noet ci pi sts=0 sw=4 ts=4
set incsearch
set noswapfile

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

let g:goyo_width = 120

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let mapleader = ','

nnoremap <silent> <PageUp> :bprevious<CR>
nnoremap <silent> <PageDown> :bnext<CR>

" Removing arrow key functionality
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

nnoremap mk :make<CR>

inoremap jk <Esc>

nnoremap Y y$

tnoremap <leader>et <C-\><C-n>
nnoremap <leader>t :term<CR>

"Leader mappings
nnoremap <leader>h :sp<CR>
nnoremap <leader>v :vsp<CR>
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>nt :NERDTree<CR>
nnoremap <space><space> <C-w>w
nnoremap <leader>m <C-w>o
nnoremap <leader>q :q<CR>
nnoremap <leader>r :!ruby %<CR>
nnoremap <leader>T :TestNearest<CR>
nnoremap <leader>s :!rspec<CR>
nnoremap <leader>cs :!reek %<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>beau :call HtmlBeautify()<CR>
nnoremap <leader>j :!jade -P %<CR>
nnoremap <leader>o :e 
