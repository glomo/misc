" ~/.vim/vim.vim
" Author: Matt Corks <mvcorks@uwaterloo.ca>

syntax on

" edit this file
map ;E :e $HOME/.vim/vim.vim<CR>

" syntax check
map ;s :w<CR>:so %<CR>

" vim comments
map ;c mz0i"<ESC>`z
map ;C mz0x`z
vmap ;c :s/^/"<CR>
vmap ;C :s/^"//<CR>
set formatoptions=crql
set comments=b:\"

" no title blocks necessary
map ;t ;c
vmap ;t ;c

set keywordprg=

map ;h :"<CR>
unmap ;h
map ;H :"<CR>
unmap ;H
map ;m :"<CR>
unmap ;m
map ;M :"<CR>
unmap ;M
map ;N :"<CR>
unmap ;N

set equalprg=vim
