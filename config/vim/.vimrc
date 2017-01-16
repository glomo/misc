set nocompatible

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let g:ycm_confirm_extra_conf = 0

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"filetype on

set fileformat=unix
set backspace=indent,eol,start  "Allow backspace in insert mode
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
"set visualbell                  "No sounds
"set t_vb=
"set smartindent
set shiftwidth=4
set textwidth=0
set ruler
set wrapmargin=0
set showmatch
set hlsearch
set incsearch
"set ignorecase
set backspace=indent,eol,start
"set tabstop=8
"set noexpandtab
set tabstop=4
set expandtab
set wildignore=*.o,*.obj,*.bak,*.exe
set paste
"set pastetoggle=<F2>
set ruler
syntax on

function! Hl_whitespace_err ()
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
endfunction

function! s:FixWhitespace(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/\s\+$//'
    call setpos('.', l:save_cursor)
endfunction

" Run :FixWhitespace to remove end of line white space
command! -range=% FixWhitespace call <SID>FixWhitespace(<line1>,<line2>)

function! OnLoadSrc ()
    set number
    set autoindent
    set smarttab
    set expandtab
endfunction

function! OnLoadC ()
    call OnLoadSrc()
    set shiftwidth=4
    set softtabstop=4
    set tabstop=4
    set comments=sr:/*,mb:*,el:*/,://
    call Hl_whitespace_err()
endfunction

function! OnLoadHTMLJS ()
    call OnLoadSrc()
    set shiftwidth=2
    set softtabstop=2
    set tabstop=2
    set linebreak    "Wrap lines at convenient points
endfunction

function! OnLoadMarkdown ()
    set autoindent
    set smarttab
    set shiftwidth=4
    set tabstop=4
    set tw=72
endfunction

autocmd FileType c,cpp,css,java,python,sh,vim call OnLoadC()
autocmd FileType javascript,html call OnLoadHTMLJS()
autocmd FileType markdown call OnLoadMarkdown()

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

map <space> <c-w>w
nnoremap <silent> <C-n><nobr> <wbr></nobr>:tabnext<CR>
nnoremap <silent> <C-p><nobr> <wbr></nobr>:tabprevious<CR>

"VCSCommand Options"
let VCSCommandSplit="vertical"


