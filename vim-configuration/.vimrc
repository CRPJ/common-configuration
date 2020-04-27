" last updated:  2019-12-25

" 定义快捷键前缀，即<Leader>
let mapleader=";"

" >>
" 文件类型侦测

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载相应的插件
filetype plugin on

" <<

" >>
" vim 自身（非插件）快捷键

" 定义快捷键将选中文本复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p  "+p

" <<

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" >>
" 其他

" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

" vim 自身命令行模式补全
set wildmenu

" <<

" >>>>
" 安装插件

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
" <<<<

" 配色方案
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd

" >>
" 营造专注氛围

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具栏
set guioptions-=m
set guioptions-=T

" <<

" >>
" 辅助信息

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch

" <<

" >>
" 其他美化

" 禁止折行
set nowrap

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" <<

" >>
" 语法分析

" 开启语法高亮
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" <<

" >>
" 缩进

" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化制表符占用空格数
set shiftwidth=4
" 让vim把连续数量的空格视为一个制表符
set softtabstop=4

" 缩进可视化插件 Indent Guides
" 随vim启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键i开/关缩进可视化
nmap <silent><Leader>i <Plug>IndentGuidesToggle

" <<

" >>
" 代码折叠

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动vim时关闭折叠代码
set nofoldenable

" <<

" >>
" 接口与实现快速切换

" *.cpp和*.h间切换
nmap <silent><Leader>sw :FSHere<cr>

" <<

" >>
" YCM补全

" YCM补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1

" 允许vim加载.ycm_extra_conf.py文件，不再提示
let g:ycm_confirm_extra_conf=0

" 开启YCM标签补全引擎
let g:ycm_collect_indentifiers_from_tags_files=0

" 补全内容不以分隔子窗口形式出现，只显示补全列表
set completeopt=preview

" 从第一个键入字符即开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1

" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" <<
