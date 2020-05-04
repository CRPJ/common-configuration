# myvim

我自己的vim配置，**本配置针对与linux，windows下的配置略有不同**

## vim安装

```c++
git clone git@github.com:vim/vim.git
cd vim/
./configure --with-features=huge --enable-python3interp --enable-rubyinterp --enable-luainterp --enable-perlinterp --with-python-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu/ --enable-gui=gtk2 --enable-cscope --prefix=/usr/local
						
make
make install
```

**在这里要注意，vim插件YouCompleteMe必须需要python3支持，所以这里需要配置python3的路径**

其中，<code>--enable-pythoninterp</code>、<code>--enable-rubyinterp</code>、<code>--enable-perlinterp</code>、<code>--enable-luainterp</code>分别表示支持python、ruby、perl、lua编写的插件，--enable-gui=gtk2 表示生成采用 GNOME2 风格的 gvim，--enable-cscope 支持 cscope，--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ 指定 python 路径（先自行安装 python 的头文件 python-devel），这几个特性非常重要，影响后面各类插件的使用。注意，你得预先安装相关依赖库的头文件，python-deｖ、python3-dev、ruby-de、lua5.2、libx11-devel、gtk2.0-devel、gtk3.0-devel、ncurses-devel，如果缺失，源码构建过程虽不会报错，但最终生成的 vim 很可能缺失某些功能。构建完成后在 vim 中执行

安装所需要的依赖库：

```
sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python3-dev ruby-dev lua5.1 liblua5.1-dev libperl-dev git
```



```
:echo has('python3')
```

若输出１则表示构建出的vim已经支持python，反之，０则表示不支持

## 插件管理

**使用vim-plug进行插件管理，vim-plug效果比Vundle更好，尤其是当插件的数量比较多时，vim-plug安装插件的速度比Vundle快很多**

1.  vim-plug的安装：

```c++
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2.  vim-plug的使用

    在家目录下新建配置文件`~/.vimrc`

    **配置实例**

    ```c++
    " 插件安装列表
    call plug#begin('~/.vim/plugged')
    
    Plug  'altercation/vim-colors-solarized'
    Plug 'tomasr/molokai'
    Plug 'vim-scripts/phd'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'Lokaltog/vim-powerline'
    Plug 'Valloric/YouCompleteMe'
    "Plug 'Sirver/ultisnips'
    Plug 'scrooloose/nerdtree'
    Plug 'nathanaelkane/vim-indent-guides'
    
    " 插件列表结束
    call plug#end()
    ```

## 注意事项

安装YouCompleteMe之后需要进入`~/.vim/plugged/YouCompleteMe/`中，运行`./install.py`
