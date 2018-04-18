set encoding=utf-8
set nocompatible
"filetype off
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set rtp+=/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" All plugins must be added before the following line
call vundle#end()
filetype plugin indent on

set exrc
set secure
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

set number
set mouse=a
syntax on
set showmatch
set autoindent
"set tabstop=4
"set shiftwidth=4
filetype plugin indent on
set expandtab
set textwidth=120
set t_Co=256
map <F7> mzgg=G'z
