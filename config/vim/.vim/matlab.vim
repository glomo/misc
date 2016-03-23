" ~/.vim/matlab.vim
" Author: Matt Corks <mvcorks@uwaterloo.ca>

"set mapleader
let mapleader = ","
let g:mapleader = ","

" edit this file
map <leader>E :e $HOME/.vim/matlab.vim<CR>

" check syntax
map <leader>s :" Sorry, no syntax checker for matlab(1) files<CR>

" comments
map <leader>c mz0i%<ESC>`z
map <leader>C mz0x`z
vmap <leader>c <ESC>:'<,'>s/^/%/<CR>'<
vmap <leader>C <ESC>:'<,'>s/^%//<CR>'<

" title block
map <leader>t :set paste<CR>O<ESC>40a%<ESC>jI% <ESC>o<ESC>40a%<ESC>k0W:set nopaste<CR>
vmap <leader>t <ESC>:'<,'>s/^/% /<CR>'<O<ESC>40a%<ESC>'>o<ESC>40a%<ESC>'<j0W

set cinkeys=0{,0},:,0%,!^F,o,O
set cinwords={
set formatoptions=croql cindent comments=b:%

set keywordprg=man

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

set equalprg=matlab
