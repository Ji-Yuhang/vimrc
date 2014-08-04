#vim配置文件,使用vundle

------

在主目录建立vimrc文件夹，将配置文件都放在这个文件夹下。利用git同步。

```
 git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

- 在windows下，在主目录下建立 _vimrc 文件
- 在Linux下，在主目录下建立 .vimrc文件

文件内容

```
source ~/vimrc/bundlerc.vim
source ~/vimrc/vimrc.vim

```
- 打开vim 执行 `:PluginInstall`

### ctags

```
ctags -R --c++-kinds=+px --fields=+iaS --extra=+q 
```

