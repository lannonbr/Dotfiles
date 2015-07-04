set nocompatible
set shortmess+=I
set laststatus=2
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'rust-lang/rust.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'rstacruz/sparkup'
Plugin 'kongo2002/fsharp-vim'
Plugin 'tpope/vim-commentary'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bufexplorer.zip'
Plugin 'jiangmiao/auto-pairs'
Bundle 'wakatime/vim-wakatime'

call vundle#end()

filetype plugin indent on
set nu
set ignorecase smartcase
syntax on
set noet ci pi sts=0 sw=4 ts=4
colorscheme default

let g:startify_bookmarks = [ '~/.vimrc' ]
let g:startify_list_order = [
	\['bookmarks'], 'bookmarks',
	\['recent files'], 'files',
	\['recent files in current directory'], 'dir' ]
let g:startify_custom_header = map(split(system('echo \"Welcome to Vim\" | cowsay'), '\n'), '"   ". v:val') + ['','']

nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

