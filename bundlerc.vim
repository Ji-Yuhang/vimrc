set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
let path='~/vimfiles/bundle'
let path='~/.vim/bundle'
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Ji-Yuhang/a.vim'
Plugin 'Mizuchi/STL-Syntax'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'matchit.zip'
Plugin 'Tagbar'
Plugin 'L9'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'echofunc.vim'
Plugin 'qthelp'
Plugin 'calendar.vim'
Plugin 'rails.vim'
Plugin 'railscasts'
Plugin 'ctrlp.vim'
"Plugin 'OmniCppComplete'
Plugin 'JSON.vim'
Plugin 'clang-complete'
Plugin 'Solarized'
Plugin 'molokai'
Plugin 'qmake--syntax.vim'
Plugin 'cpp.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'MarkdownFootnotes'
"Plugin 'instant-markdown.vim'
Plugin 'rizzatti/dash.vim'
" Plugin 'STL-improved'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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
"
