" 设定默认编码
set ff=unix
set encoding=utf-8
set fenc=utf8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gb2312,cp936,gbk
set fdm=marker

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 设置语法高亮
syntax on

" 不生成swap文件
setlocal noswapfile

" 显示行号
set number

" 光标不闪烁
set novisualbell

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
" set mouse=a
" set selection=exclusive
" set selectmode=mouse,key

""""""""""""""""""""
" 搜索与匹配
""""""""""""""""""""
" 高亮显示匹配括号
set showmatch

" 通过使用:commands命令，告诉我们文件的哪一行被改变
" set report=0

""""""""""""""""""""
" 文本格式和排版
""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适合于多行注释
set autoindent

" 为C程序提供自动缩进
" set smartindent

" 使用C样式的缩进
" set cindent

" 设置缩进步长
set softtabstop=2

" 不要换行
set nowrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeWinPos = "left"

let NERDTreeWinSize = 31

nmap <F3> <ESC>:NERDTreeToggle<RETURN>
colorscheme darkburn
set t_Co=256

" 个人签名
function Signature()
  call setline(1,"/**********************************************")
  call append(line(". "),"  Author:   eddiepersona@qq.com")
  call append(line(". ")+1,"  Time:     ".strftime("%c"))
  call append(line(".")+2,"  File:     ".expand("%"))
  call append(line(".")+3,"  Desc:   ")
  call append(line(".")+4,"**********************************************/")
endf
nmap <F4> <Esc>:0<ESC>:call Signature()<CR><Esc>:$<Esc>o
