set nu
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set nowb 
set noswapfile 
set showmatch 

syntax enable 
syntax on 
colorscheme molokai
set cindent
set hlsearch

"use ctags to jump
set tags=tags;
set tags+=~/.vim/systags

let g:tagbar_ctags_bin = 'ctags'                       "tagbar以来ctags插件
let g:tagbar_left = 0                                          "让tagbar在页面左侧显示，默认右边
let g:tagbar_width = 30                                     "设置tagbar的宽度为30列，默认40
let g:tagbar_autofocus = 0                                "这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
let g:tagbar_sort = 0                                         "设置标签不排序，默认排序

let g:winManagerWidth = 30
let g:winManagerWindowLayout = "FileExplorer"
"let g:winManagerWindowLayout = "BufExplorer"
"let g:winManagerWindowLayout = "FileExplorer|BufExplorer"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

"cscope setting
"set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    set cspc=3
    "add any database in current dir
    if filereadable("cscope.out")
        cs add cscope.out
    "else search cscope.out elsewhere
    else
       let cscope_file=findfile("cscope.out", ".;")
       let cscope_pre=matchstr(cscope_file, ".*/")
       if !empty(cscope_file) && filereadable(cscope_file)
           exe "cs add" cscope_file cscope_pre
       endif
     endif
endif

"nmap <silent> <F3> :WMToggle<CR>        
"nmap <silent> <F4> :TagbarToggle<CR>        

" move among buffers in vim-airline
map <C-E> :bnext<CR>
map <C-A> :bprev<CR>
map <C-L> :blast<CR>
map <C-H> :bfirst<CR>
map <C-K> :bdelete<CR>
map <C-N> :WMToggle<CR>
map <C-M> :TagbarToggle<CR>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> wm :WMToggle<CR>
nnoremap <silent> tb :TagbarToggle<CR>

au VimEnter * WMToggle
au VimEnter *  Tagbar

"nmap wm :WMToggle<cr> 


