set shortmess=atI	" 启动时候不显示援助乌干达儿童提示 
set number		    " 显示行号 
syntax on		    " 语法高亮 
set showcmd		    " 在Vim窗口的右下角显示一个完整的命令已经完成的部分 
set laststatus=2	" 总是显示状态栏
set foldenable		" 允许折叠 
set foldmethod=manual	" 手动折叠
set background=dark		" 黑色背景 
if has("win32")
    set guifont=Consolas:h11	" 设置字体 
    set guifont=Monaco:h11:cANSI
endif
colorscheme desert		" 配色 

set noeb "出错时没有bi的报警声音
set vb "出错时候闪烁提示
 
if has("gui_running")
    set background=light		" 黑色背景 
    colorscheme solarized
endif
if has("unix")
    set guifont=Consolas\ 13	" 设置字体 
endif
if has("mac")
    set guifont=Monaco:h13
endif
set guioptions-=T       " 隐藏工具栏 
"set guioptions-=m       " 隐藏菜单栏 
set autoread            " 当文件被改动，自动加载 
set nobackup            " 从不备份 
set noswapfile          " 禁止生成临时文件 
set ruler               "突出显示状态栏标尺 
set cc=80
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}
set cursorline
set hlsearch
set incsearch

" begin 设置中文不乱码 
set encoding=utf-8
set fencs=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
language messages zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" end 

" 缩进 
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
" 

" 键盘映射 
if has("win32")
    nmap <A-m> :TagbarToggle<CR>
    nmap <A-o> :A<CR>
    nmap <A-O> :NERDTreeToggle<CR>
endif
if has("mac")
    nnoremap µ :TagbarToggle<CR>
    nnoremap Ø :NERDTreeToggle<CR>
else
    nmap <A-m> :TagbarToggle<CR>
    nmap <A-O> :NERDTreeToggle<CR>
endif

if has("unix")
    set path+=/usr/include/qt4
    set path+=/usr/include/qt4/Qt
    set path+=/usr/include/qt4/QtCore
    set path+=/usr/include/qt4/QtGui
    set path+=/usr/include/qt4/QtNetwork
    set path+=/usr/include/qt4/QtSql
    set path+=/usr/include/qt4/QtXml
    set path+=/usr/include/c++/4.8
    set path+=/usr/include
endif
if has("mac")
    set path+=.
    set path+=../bin/.moc
    set path+=../bin/.qrc
    set path+=../bin/.ui
    set path+=./soap

    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtCore
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtGui
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtWidgets
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtNetwork
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtXml
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtSql

    set path+=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1
    set path+=/usr/include
    set path+=/opt/local/include
 
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtCore.framework
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtGui.framework
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtNetwork.framework
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtCore.framework/Versions/5/Headers
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtGui.framework/Versions/5/Headers
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtWidgets.framework/Versions/5/Headers
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtNetwork.framework/Versions/5/Headers
endif

"set completeopt-=preview
"let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
