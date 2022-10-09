set number
set foldcolumn=2
syntax on
set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nocompatible              " be iMproved, required
set nocp
set bs=2
set expandtab
fixdel
filetype off                  " required

let g:ycm_confirm_extra_conf = 0
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("clangd")

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'Yggdroot/indentLine'
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme dracula

noremap <S-G> <Esc>:YcmCompleter GoTo<CR>
nnoremap <S-Q> <Esc>:q!<CR>
nnoremap <S-S> <Esc>:w<CR>
nnoremap <S-H> <C-W>h
nnoremap <S-J> <C-W>j
nnoremap <S-K> <C-W>k
nnoremap <S-L> <C-W>l
nnoremap <S-n> :NERDTree<CR>
nnoremap <S-f> :NERDTreeFind<CR>
