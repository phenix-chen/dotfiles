set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
" Plugin 'itchyny/lightline.vim'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ervandew/supertab'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'edkolev/tmuxline.vim'
" Plugin 'python-mode/python-mode'
Plugin 'tell-k/vim-autopep8'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set runtimepath+=~/.vim_runtime
source ~/.local/etc/vim/basic.vim
source ~/.local/etc/vim/plugins_config.vim
source ~/.local/etc/vim/filetypes.vim
source ~/.local/etc/vim/extended.vim
set clipboard=unnamed
