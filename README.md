# vim-plugin
vundle 是vim插件管理器，需要先安装vundle插件，
安装之后，再在vim中执行BundleInstall命令会通过git命令
自动安装配置文件.vimrc中配置Bundle "plugin name"中的
插件，首先需要保证机器能正常链接外网，如机器不能整行联网
可以直接下载整个目录放到指定目录上。
## 插件详情
* The-NERD-tree 文件导航窗口
* taglist.vim 当前文件包含的函数，变量，宏等信息列表
* fatih/vim-go dgryski/vim-godef Blackrush/vim-gocode majutsushi/tagbar golang 格式化插件
* ctrlp.vim 文件查找搜索
* ctrlp-funky 当前文件中查找搜索函数
* scrooloose/nerdcommenter 代码注释 （相当于// /**/）
* vim-scripts/DoxygenToolkit.vim 代码注释 （文件开头注释，函数注释）
* https://github.com/nathanaelkane/vim-indent-guides 代码折叠插件
* https://github.com/vim-scripts/a.vim cpp 和 h文件的切换
* scrooloose/syntastic 语法检查
* Valloric/YouCompleteMe 代码的跳转
## 安装
1. .vimrc 中vim的配置文件，里面包含了插件类别，快捷键，主题，可视化等信息的配置
2. 用vim打开任意一个文件
3. 运行 :BundleInstall （vundle插件的命令），该命令会判断.vimrc包含的插件在指定目录下是否有，如果没有通过git下载
