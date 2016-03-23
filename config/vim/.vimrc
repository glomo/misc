set nocompatible
syntax on

set fileformat=unix
set showmode
set smartindent
set shiftwidth=4
set textwidth=0
set ruler
set wrapmargin=0
set showmatch
set hlsearch
set incsearch
"set ignorecase
set backspace=indent,eol,start
set tabstop=8
set noexpandtab
"set tabstop=4
"set expandtab
set wildignore=*.o,*.obj,*.bak,*.exe
set paste
set ruler

set backup
set backupdir=~/.vim/backup

"set shell=/bin/tcsh

"set diffopt=horizontal
"set diffopt=vertical

" :map <space> <c-f>
" :map <backspace> <c-b>
map <space> <c-w>w
"nmap <S-Space> <pagedown>H
"nmap <space> <C-f>

nnoremap <silent> <C-n><nobr> <wbr></nobr>:tabnext<CR>

nnoremap <silent> <C-p><nobr> <wbr></nobr>:tabprevious<CR>

"VCSCommand Options"
let VCSCommandSplit="vertical"

"Highlight column goes over 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Highlight spaces before a tab Not working, not sure why
highlight SpaceBeforeTab ctermbg=darkred guibg=#382424
autocmd ColorScheme * highlight SpaceBeforeTab ctermbg=red guibg=red
autocmd BufWinEnter * match SpaceBeforeTab / \+\ze\t/

" Highlight EOL whitespace, http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=darkred guibg=#382424
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/

" The above flashes annoyingly while typing, be calmer in insert mode
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/

function! s:FixWhitespace(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/\s\+$//'
    call setpos('.', l:save_cursor)
endfunction

" Run :FixWhitespace to remove end of line white space
command! -range=% FixWhitespace call <SID>FixWhitespace(<line1>,<line2>)

autocmd BufEnter .*vimrc,*vimrc,.exrc,*.vim  source $HOME/.vim/vim.vim
autocmd BufEnter *.c,*.h,*.cc,*.C,*.H,*.hh,*.cpp,*.cxx,*.c++,*.y,*.l source $HOME/.vim/c.vim
autocmd BufEnter *.pl,*.pm,*.PL,*.pl.cgi source $HOME/.vim/pl.vim
autocmd BufEnter *.m source $HOME/.vim/matlab.vim
autocmd BufEnter *.java source $HOME/.vim/java.vim
autocmd BufEnter *.html,*.htm source $HOME/.vim/html.vim
"autocmd BufEnter *.py source $HOME/.vim/python.vim

"colorscheme matrix

function! Formatknl()
    :set tabstop=8
    :set noexpandtab
endfunction

function! Formatusr()
    :set tabstop=4
    :set expandtab
endfunction

command! FmtKnl call Formatknl()
command! FmtUsr call Formatusr()
