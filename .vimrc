set nocompatible " be iMproved, required
"set fencs=utf-8,gbk
filetype on
filetype plugin on
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle "VundleVim/Vundle.vim"

Bundle "The-NERD-tree"
map <silent>nd :NERDTree<CR>
map <silent>tn :tabn<CR>
map <silent>tc :tabc<CR>
map <silent>tp :tabp<CR>

Bundle "taglist.vim"
map <silent>tl :Tlist<CR>

"go plugin
"Bundle 'dgryski/vim-godef'
"Bundle 'Blackrush/vim-gocode'
"Bundle 'majutsushi/tagbar'
Bundle 'fatih/vim-go'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:go_term_enabled = 1
let g:go_fmt_command = "goimports"
Bundle 'dgryski/vim-godef'
Bundle 'Blackrush/vim-gocode'
Bundle 'majutsushi/tagbar'
autocmd BufWritePre *.go :Fmt



" 文件搜索
Bundle "ctrlp.vim"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" 函数搜索
Bundle "ctrlp-funky"
"let mapleader = '-'
" leader default is '\'
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <Leader>fU ::execute 'CtrlPFunky ' . expand('<cword>')<CR>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

" 当引用没有明确的开始目录时，CTLRP会按照以下值来设定工作目录
" ‘c’--当前文件的目录
" ‘a’--当前文件的目录，除非它是cwd的子目录
" ‘r’--最近的当前文件，包含了这些.git .hg .svn .bzr_darcs文件或目录
" ‘w’--和r类似，以cwd开始搜索，而非以当前文件目录
let g:ctrlp_working_path_mode='rw'

"代码注释插件
Bundle "scrooloose/nerdcommenter"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" <leader>cc 注释当前选中的文本
" <leader>cu 取消当前选中的文本块的注释
" vim在可视化中可以进行选中

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" maintitle
Bundle "vim-scripts/khaki.vim"
"if !has("gui_running")
"	set t_Co=256
"endif 
" vim colorscheme
"Bundle "tomasr/molokai"
Bundle "altercation/vim-colors-solarized"
" 开启语法高亮功能
syntax enable 
" if has('gui_running')
"     let g:solarized_termcolors=256
"     set background=light
" else
"     set background=dark
"     "set t_Co=256
" endif
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
set background=dark
"set t_Co=8
"if $TERM=="xterm-256color"
"  set t_Co=256
  "let g:solarized_termcolors=256
"  colorscheme solarized
"else 
"  set t_Co=8
"  colorscheme desert
"endif
"let g:solarized_termcolors=256
"colorscheme solarized 
"colorscheme molokai
"colorscheme slate
"colorscheme morning 
"colorscheme elflord 
"colorscheme koehler 
colorscheme desert 
"colorscheme evening 
"colorscheme delek 
"colorscheme darkblue 
"colorscheme zellner
"colorscheme shine 
"colorscheme pablo 
"colorscheme ron 
"colorscheme murphy 
"colorscheme industry 
"colorscheme peachpuff

"注释插件
Bundle "vim-scripts/DoxygenToolkit.vim"
let g:DoxygenToolkit_authorName="liuyuansheng@sogou-inc.com"
let g:DoxygenToolkit_versionString="1.0"
"command   :DoxAuthor(file head)   :Dox (function class struct)


"YCM
" Bundle "Valloric/YouCompleteMe"
" let g:ycm_server_python_interpreter="/usr/bin/python"
" let g:ycm_global_ycm_extra_conf="~/.vim/.ycm_extra_conf.py"
" let g:ycm_collect_identifiers_from_tag_files = 1
" let g:ycm_error_symbol = '>>'
" let g:ycm_warning_symbol = '>*'
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR> "跳转定义
" nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  "跳转声明
" nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR> "两者的合体
" nnoremap <leader>gi :YcmCompleter GoToInclude<CR> "跳转头文件

"syntastic
"Bundle "scrooloose/syntastic"
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!' 


"a.vim
Bundle "https://github.com/vim-scripts/a.vim"
" *.cpp 和 *.h 间切换
map <silent>ch :A<CR>
" 子窗口中显示 *.cpp 和 *.h
map <silent>sch :AS<CR>
" 子窗口中显示 *.cpp 和 *.h
map <silent>vch :AV<CR>
" 用法
" :A 在新Buffer中切换c\h文件 
" :AS 横向分割窗口并打开c\h文件
" :AV 纵向分割窗口并打开c\h文件
" :AT 新建一个标签并打开c\h文件



" Guides
Bundle "https://github.com/nathanaelkane/vim-indent-guides"
"随 vim 自启动
let g:inent_guides_enable_on_vim_startup=1
"从第二层开始可视化缩进
let g:indent_guides_start_level=2
"色块宽度
let g:indent_guides_guide_size=1
"快捷键开关缩进可视化
:nmap <silent> <leader><F2> <Plug>IndentGuidesToggle



" ctags 
set tags=tags;/
" 正向遍历同名标签
nmap <leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <leader>tp :tprev<CR>

" 开启语法高亮功能
syntax enable 

" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 显示光标位置
set ruler

" 高亮显示当前行/列
set cursorline
"set cursorcolumn

" 高亮显示索搜结果
set hlsearch

"开启行号显示
set number

set autoindent
"set cindent

" 设置编辑时制表符占用空格数
"set tabstop=2
set ts=2 "tong shang"
set expandtab
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 如何处理连续多个空格
set softtabstop=2

" 代码缩进
set foldmethod=syntax
"set foldmethod=indent
"set fdm=indent
"set fdm=marker

" 禁止折行
set nowrap

" 设置快捷键遍历子窗口 
" 依次遍历
nnoremap nw <C-W><C-W>
" 跳转至右方窗口
nnoremap<leader>lw <C-W>l
" 跳转至左方窗口
nnoremap<leader>rw <C-W>r
" 跳转至上方子窗口
nnoremap<leader>kw <C-W>k
" 跳转至下方子窗口
nnoremap<leader>jw <C-W>j

" 显示状态栏
set laststatus=2

set nocompatible
set backspace=indent,eol,start

" vimgrep 查找时
nnoremap <F3> :cn<CR>
nnoremap <F4> :cp<CR>



" buffer快速导航
nnoremap <silent>b :bp<CR>
nnoremap <silent>f :bn<CR>


" 字体加粗


augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end
