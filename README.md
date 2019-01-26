#vim配置文件,使用vundle

------

在主目录建立vimrc文件夹，将配置文件都放在这个文件夹下。利用git同步。

- 在Linux下，在主目录下建立 .vimrc文件
执行 

```
 git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

- 在windows下，在主目录下建立 _vimrc 文件
执行 

```
cd ~
git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
```

文件内容
```
source ~/vimrc/bundlerc.vim
source ~/vimrc/vimrc.vim

```
- 打开vim 执行 `:PluginInstall`



设置 Ack vim gvim 默认参数
```
ln -s ~/vimrc/ackrc ~/.ackrc
ln -s ~/vimrc/vimrc ~/.vimrc
ln -s ~/vimrc/gvimrc ~/.gvimrc
```

从坚果云下载 shanbay.db marshal_dump_verb.dump 到此目录









### ctags
support ruby rspec
https://github.com/majutsushi/tagbar/wiki#ruby

```
ctags -R --c++-kinds=+px --fields=+iaS --extra=+q 
```

# 常用脚本程序

设置 ENV["memory_token"]
add_word.rb 增加生词
```
add_word.rb bench
```
todos.rb 创建任务清单
```
todos new 今天要做...事情
todos list
```
similarword.rb 模糊匹配单词
```
similarword.rb first second thrid words
```
