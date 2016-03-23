" ~/.vim/c.vim
" Author: Matt Corks <mvcorks@uwaterloo.ca>

"set mapleader
let mapleader = ","
let g:mapleader = ","

"edit this file
map <leader>E :e $HOME/.vim/java.vim<CR>

map <leader>s :!javac %<CR>

" comments
map <leader>c mz^i//<ESC>`z
map <leader>C mz^2x`z
vmap <leader>c <ESC>`<i/*<ESC>`>a*/<ESC>
vmap <leader>C <ESC>`<2x`>h2x

" title
map <leader>t :s/^[ <Tab>]*//<CR>O<C-U>/<ESC>a*<ESC>jI * <ESC>o<C-U> <ESC>40a*<ESC>A/<ESC>k0WW
vmap <leader>t <ESC>:'<,'>s/^/ * /<CR>'<O<C-U>/<ESC>a*<ESC>'>o<C-U> <ESC>40a*<ESC>A/<ESC>'<j0WW

set formatoptions=crql
set cindent 
set comments=sr:/*,mb:*,el:*/,://

set keywordprg=man

" this isn't perfect yet
set cinkeys=0{,0},:,0#,!^F,o,O
set cinwords=if,else,while,do,for,switch
set cinwords={

map <leader>h :"<CR>
unmap <leader>h
map <leader>H :"<CR>
unmap <leader>H
map <leader>m :"<CR>
unmap <leader>m
map <leader>M :"<CR>
unmap <leader>M
map <leader>N :"<CR>
unmap <leader>N

set equalprg=java
