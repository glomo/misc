" ~/.vim/html.vim
" Author: Matt Corks <mvcorks@uwaterloo.ca>


"set mapleader
let mapleader = ","
let g:mapleader = ","

set matchpairs=(:),{:},[:],<:>

" edit this file
map <leader>E :e $HOME/.vim/html.vim<CR>

" HTML comments (comments a tag, not a LINE)
map <leader>c mz?<<CR>a!--<ESC>/><CR>i--<ESC>`z
map <leader>C mz?<<CR>l3x/><CR>2X`z
vmap <leader>c <ESC>`<i<!--<ESC>`>a--><ESC>
vmap <leader>C <ESC>`<4x`>2h3x

" HTML comments
set formatoptions=tcql
set comments=sr:<!--,mb:-,el:-->

" HTML syntax
map <leader>s :!htmlcheck %<CR>

" HTML tag
map <leader>h lBi<a href="<ESC>Ea"></a><ESC>3hi
map <leader>H lBi<code><ESC>Ea</code><ESC>B
vmap <leader>H <ESC>`<i<code><ESC>`>a</code><ESC>`<6l

" titles
map <leader>t :s/^[ <TAB>]*//<CR>O<C-U><!--<ESC>jI<C-U>    <ESC>o<C-U>--><ESC>k0
vmap <leader>t <ESC>:'<,'>s/^[ <TAB>]*//<CR>:'<,'>s/^/    /<CR>'<O<C-U><!--<ESC>'>o<C-U>  --><ESC>'<0W

map <leader>m :"<CR>
unmap <leader>m
map <leader>M :"<CR>
unmap <leader>M
map <leader>N :"<CR>
unmap <leader>N

set equalprg=html
