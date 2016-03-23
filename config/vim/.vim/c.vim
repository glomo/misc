" ~/.vim/c.vim
" modified from those written by Matt Corks <mvcorks@uwaterloo.ca>

setl nocompatible
syntax on

"setl nu
setl formatoptions=croql
setl cindent 
setl comments=sr:/*,mb:*,el:*/,://
setl shiftwidth=4
"setl textwidth=77
setl ruler
setl wrapmargin=0
setl showmatch
setl hlsearch
setl incsearch
setl noignorecase
setl backspace=indent,eol,start
"setl tabstop=8
"setl noexpandtab
"setl tabstop=4
"setl expandtab

"autocomplete options
setl complete=d,i,t
setl showfulltag

setl keywordprg=man

" set tag search directory
setl tags=tags;/ "search file named tags, starting with the current directory, and go up.

" using default cinkeys, cinwords
setl cinkeys=0{,0},:,0#,!^F,o,O,e
setl cinwords=if,else,while,do,for,switch
setl cinoptions=(1s


" syntax highlighting
"if has("gui_running")
"  if exists("colour_xterm")
"    " includes c.vim
"    source $VIM/syntax/cpp.vim
"    syntax keyword cType FILE
"    syntax keyword cType size_t
"  endif
"endif

"Set mapleader
let maplocalleader = ","
"let mapleader = ";"

"edit this file
map <localleader>E :e $HOME/.vim/c.vim<CR>

" no syntax checker
map <localleader>s :"<CR>
unmap <localleader>s
 
" c/c++ comments
"map <localleader>c mz^i/*<ESC>$a*/<ESC>`z
"map <localleader>C mz^2x$Xx`z
"vmap <localleader>c <ESC>`<i/*<ESC>`>a*/<ESC>
"vmap <localleader>C <ESC>`<2x`>h2x

vmap <localleader>c <ESC>`<O#if 0<ESC>`>o#endif // 0<ESC>

" title
"map <localleader>t :s/^[ <Tab>]*//<CR>O<C-U>/<ESC>40a*<ESC>jI * <ESC>o<C-U> <ESC>40a*<ESC>A/<ESC>k0WW
vmap <localleader>t <ESC>:'<,'>s/^/ * /<CR>'<O<C-U>/<ESC>40a*<ESC>'>o<C-U> <ESC>40a*<ESC>A/<ESC>'<j0WW

map <localleader>h :"<CR>
unmap <localleader>h
map <localleader>H :"<CR>
unmap <localleader>H
map <localleader>m :"<CR>
unmap <localleader>m
map <localleader>M :"<CR>
unmap <localleader>M
map <localleader>N :"<CR>
unmap <localleader>N

map <F11> :cn<CR>
map <F12> :cp<CR>

setl equalprg=c

if has ("unix")
    set makeprg=make
else
    set makeprg=nmake
endif

"Qualnet stuff
setl path^=$QUALNET_HOME/**

"Add comment header for function 
nmap <localleader>f <ESC>i// /<ESC>2a*<ESC>oFUNCTION::<ESC>oLAYER:: <ESC>oPURPOSE:: <ESC>oPARAMETERS:: <ESC>oRETURN:: NULL<ESC>o <ESC>2i*<ESC>a/<ESC>
nmap <localleader>t <ESC>i// /<ESC>2a*<ESC>oTYPEDEF::<ESC>oDESCRIPTION::<ESC>o<TAB><TAB><ESC>o<ESC>2a<SPACE><ESC>2i*<ESC>a/<ESC>
nmap <localleader>s <ESC>i// /<ESC>2a*<ESC>oSTRUCT::<ESC>oDESCRIPTION::<ESC>o<TAB><TAB><ESC>o<ESC>2a<SPACE><ESC>2i*<ESC>a/<ESC>
nmap <localleader>e <ESC>i// /<ESC>2a*<ESC>oENUM::<ESC>oDESCRIPTION::<ESC>o<TAB><TAB><ESC>o<ESC>2a<SPACE><ESC>2i*<ESC>a/<ESC>
nmap <localleader>c <ESC>i// /<ESC>2a*<ESC>oCONSTANT::<ESC>oDESCRIPTION::<ESC>o<TAB><TAB><ESC>o<ESC>2a<SPACE><ESC>2i*<ESC>a/<ESC>
nmap <localleader>m <ESC>i// /<ESC>2a*<ESC>oMACRO::<ESC>oDESCRIPTION::<ESC>o<TAB><TAB><ESC>o<ESC>2a<SPACE><ESC>2i*<ESC>a/<ESC>

"ab #z #ifdef ADDON_ZELTECH
"ab #y #endif //ADDON_ZELTECH


