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

" # ruby
"Plugin 'ruby.vimindentruby'
"Plugin 'indentruby.vim'
Plugin 'Ji-Yuhang/indentruby.vim'
Plugin 'Ruby-Snippets'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
" # end


Plugin 'rcyrus/snipmate-snippets-rubymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'Ji-Yuhang/a.vim'
"Plugin 'Mizuchi/STL-Syntax'
"Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'wincent/terminus'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
"Plugin 'valloric/youcompleteme'
Plugin 'reedes/vim-litecorrect'
Plugin 'reedes/vim-wordy'
Plugin 'junegunn/goyo.vim' "专心写作
Plugin 'slim-template/vim-slim'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'ack.vim'
Plugin 'rking/ag.vim'
"Plugin 'snipMate'
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
Plugin 'tacahiroy/ctrlp-funky' "ctrlp查看函数
Plugin 'endwise.vim'
"Plugin 'OmniCppComplete'
Plugin 'JSON.vim'
"Plugin 'clang-complete'
Plugin 'Solarized'
Plugin 'molokai'
Plugin 'qmake--syntax.vim'
"Plugin 'cpp.vim'
"Plugin 'gvimfullscreen_win32'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'MarkdownFootnotes'
"Plugin 'instant-markdown.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'rainbow_parentheses.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'SuperTab'
Plugin 'word_complete.vim'
Plugin 'Ji-Yuhang/ctrlp-rails.vim'
Plugin 'oplatek/Conque-Shell'
Plugin 'peterhoeg/vim-qml'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Yggdroot/indentLine'
Plugin 'junegunn/vim-easy-align'
"Plugin 'jaxbot/syntastic-react'
"Plugin 'w0rp/ale' "异步语法检查
Plugin 'mattn/emmet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'thoughtbot/vim-rspec'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'rubycomplete.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'clausreinke/typescript-tools.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'keith/rspec.vim'

" Plugin 'STL-improved'
" Git plugin not hosted on GitHub
Plugin 'skywind3000/asyncrun.vim'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'wincent/command-t'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
"Plugin 'file:///home/jiyuhang/.vim/jiyuhang'
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
