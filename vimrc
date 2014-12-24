" 设定默认编码
set ff=unix
set encoding=utf-8
set fenc=utf8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gb2312,cp936,gbk
set fdm=marker

" 设置语法高亮
syntax on

" 不生成swap文件
setlocal noswapfile

" 显示行号
set number

" 继承前一行的缩进方式，特别适合于多行注释
set autoindent

" 个人签名
function Signature()
  call setline(1,"/*")
  call append(line(". "),"*  Author:   huangjunwei@youmi.net")
  call append(line(". ")+1,"*  Time:     ".strftime("%c"))
  call append(line(".")+2,"*  File:     ".expand("%"))
  call append(line(".")+3,"*  Desc:   ")
  call append(line(".")+4,"*/")
endf
nmap <F4> <Esc>:0<ESC>:call Signature()<CR><Esc>:$<Esc>o

"""""""""""""""""""""""
" setting of tagbar
"""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " setting of multi_cursor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-x>'
let g:multi_cursor_prev_key='<C-z>'
let g:multi_cursor_skip_key='<C-c>'
let g:multi_cursor_quit_key='<Esc>'


""""""""""""""""""""""s
" setting of pathogen
"""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeWinPos = "left"

let NERDTreeWinSize = 31

" nmap <F3> <ESC>:NERDTreeToggle<RETURN>
map <C-n> :NERDTreeToggle<CR>
set t_Co=256

"""""""""""""""""""
" delimitMate
"""""""""""""""""""
let delimitMate_autoclose = 1
let delimitMate_expand_space = 1


"""""""""""""""""""
" setting of vundle
"""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
let $GIT_SSL_NO_VERIFY = 'true'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
Plugin 'https://github.com/wincent/command-t.git'
" Plugin '/home/eddie/Downloads/command-t'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'fatih/vim-go'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
