set nocompatible

"set encoding=utf-8
"set fileencoding=utf-8
set bs=2 ai hid
set viminfo='20,\"50
"set history=50
set ruler number
"#set wrapmargin=5
set ts=8
set sm
map \t :set expandtab
"set sts=2 sw=2 et
inoremap # X#

map <F4> :r !pbpaste<CR>
map <F5> :w<CR> :make<CR>
map <F6> :w<CR> :make<CR>
map <tab> za
map Q gq

augroup Python
  au!
  "au BufRead,BufNewFile *.py source ~/.vim/plugin/python.vim
  au BufRead,BufNewFile *.py set ts=8 sw=4 softtabstop=4 expandtab
  au BufRead,BufNewFile *.py set smarttab smartindent sta
  au BufRead,BufNewFile *.pyx set ts=8 sw=4 softtabstop=4 expandtab
  au BufRead,BufNewFile *.pyx set smarttab smartindent sta
  au BufRead,BufNewFile *.pxi set ts=8 sw=4 softtabstop=4 expandtab
  au BufRead,BufNewFile *.pxi set smarttab smartindent sta
augroup END

au BufRead,BufNewFile *.sh set ts=8 sw=2 softtabstop=2 expandtab

au BufNewFile,BufRead svn-commit.tmp setf svn
au BufNewFile,BufRead *.pxi setf pyrex

au BufRead,BufNewFile Makefile set ts=8 sts=8 sw=8 noet
au BufRead,BufNewFile build.mk.pre.in set ts=8 sts=8 sw=8 noet
au BufRead,BufNewFile *.php set ts=8 sts=4 sw=4 et
au BufRead,BufNewFile *.sh map <F5> :w<CR> :!sh %<CR>
au BufRead,BufNewFile *.c set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.c set smarttab smartindent sta
au BufRead,BufNewFile *.cc set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.cc set smarttab smartindent sta
au BufRead,BufNewFile *.java set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.java set smarttab smartindent sta
au BufRead,BufNewFile *.cpp set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.cpp set smarttab smartindent sta
au BufRead,BufNewFile *.h set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.h set smarttab smartindent sta
au BufRead,BufNewFile *.pl map <F5> :w<CR> :!viF5 %<CR>

au BufRead,BufNewFile *.scala set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.scala set smarttab smartindent sta
au BufRead,BufNewFile *.scala map <F5> :w<CR> :!scala %<CR>

au BufRead,BufNewFile *.jl set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.jl set smarttab smartindent sta
au BufRead,BufNewFile *.jl map <F5> :w<CR> :!julia %<CR>
au BufRead,BufNewFile *.jl let g:latex_to_unicode_tab = 0
au BufRead,BufNewFile *.jl let g:latex_to_unicode_auto = 1

au BufRead,BufNewFile *.rs set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.rs set smarttab smartindent sta

au BufRead,BufNewFile *.go set ts=8 sw=4 softtabstop=4 expandtab
au BufRead,BufNewFile *.go set smarttab smartindent sta
au BufRead,BufNewFile *.go map <F5> :w<CR> :!go run %<CR>
au BufRead,BufNewFile *.go map <F4> :w<CR> :%!gofmt -tabs=false -tabwidth=4 %<CR>

au BufRead,BufNewFile Snakefile* set ts=8 sts=4 sw=4 et
au BufRead,BufNewFile Snakefile* set syntax=snakemake
au BufRead,BufNewFile Snakefile* map <F5> :w<CR> :!snakemake<CR>
au BufNewFile Snakefile* 0r ~/.vim/skel/snakefile<CR>$dd<CR>:3<CR>

autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window '" . expand("%:t") . "'")
autocmd VimLeave * call system("tmux setw automatic-rename on")

syntax on
set background=dark
let python_highlight_all = 1

" 256 colors
set t_Co=256
