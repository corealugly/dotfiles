set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = "."

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" {{{ plugin PERL
"Plugin 'mileszs/ack.vim'
"Plugin 'vim-perl/vim-perl'
Plugin 'perl-support.vim'
" }}}

" {{{ plugin BUFEXPLORER -> list of open buffers
Plugin 'jlanzarotta/bufexplorer'
map <F6>  :BufExplorer<CR>
" }}}

" {{{ plugin SWAP
Plugin 'wesQ3/vim-windowswap'
" <-- example
"<leader>ww -> ctrl+w+arrow -> <leader>ww
" }}}

" {{{ plugin VIM-AIRLINE
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"<-- options
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"let g:airline_theme='badwolf'
let g:airline_theme='solarized'
let g:airline_solarized_normal_green = 1
""let g:solarized_italic = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" }}}

" {{{ plugin GITGUTTER for GIT
Plugin 'airblade/vim-gitgutter'
set updatetime=250
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = '~_'
"------------------ 
"":GitGutterEnable
"":GitGutterDisable
" }}}

" {{{ plugin NERDTREE
Plugin 'scrooloose/nerdtree'
map <F5> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
" }}}

" {{{ plugin TAGBAR
Plugin 'majutsushi/tagbar'
nmap <F4> :TagbarToggle<CR>
" }}}

" {{{ Search by file   ????
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
" }}}

" {{{ plugin PYTHON !!!!
" {{{ plugin INDENTlINE
Plugin 'Yggdroot/indentLine'
let g:indentLine_enabled = 1
let g:indentLine_leadingSpaceEnabled = 1
"<-- options
let g:indentLine_setColors = 0
let g:indentLine_color_term = 239          "for vim  
let g:indentLine_char = '┆'                "
"let g:indentLine_setConceal = 0
let g:indentLine_leadingSpaceChar = '·'    " mark of space
" }}}

" {{{ PYTHON-MODE
Plugin 'klen/python-mode'               " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
"<-- options
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

" проверка кода
let g:pymode_lint = 0
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
let g:pymode_lint_write = 0    " провека кода после сохранения

" установка breakpoints
let g:pymode_breakpoint = 0
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_virtualenv = 1     " поддержка virtualenv
let g:pymode_folding = 1  " отключить autofold по коду
let g:pymode_run = 0      " возможность запускать код
hi pythonSelf ctermfg=68 guifg=#5f87d7 cterm=bold gui=bold
" }}}

" {{{ NERDCOMMENTER
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1                " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1            "Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'          " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1             " Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }    " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1          " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1     " Enable trimming of trailing whitespace when uncommenting
"<-- example
"<leader>cc Comment out the current line or text selected in visual mode.
"[count]<leader>cn Same as cc but forces nesting.
"[count]<leader>c<space> Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
"[count]<leader>cm Comments the given lines using only one set of multipart delimiters.
"[count]<leader>ci Toggles the comment state of the selected line(s) individually.
"[count]<leader>cs Comments out the selected lines with a pretty block formatted layout.
"[count]<leader>cy Same as cc except that the commented line(s) are yanked first.
"<leader>c$ Comments the current line from the cursor to the end of line.
"<leader>cA Adds comment delimiters to the end of line and goes into insert mode between them.
"<leader>ca Switches to the alternative set of delimiters.
"[count]<leader>cl 
"[count]<leader>cb Same as "cc" except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
"[count]<leader>cu 
" }}}

" {{{ VIM-ISORT
Plugin 'fisadev/vim-isort'
let g:vim_isort_map = '<C-i>'
" }}}

" {{{ plugin JEDI-VIM
"Plugin 'davidhalter/jedi-vim'           " Jedi-vim autocomplete plugin
"<-- options
"let g:jedi#popup_select_first = 0       " Disable choose first function/method at autocomplete
" }}}

"Plugin 'mitsuhiko/vim-jinja'            " Jinja support for vim
"Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

Plugin 'w0rp/ale'                       "Asynchronous Lint Engine

"<-- python library
"--> pip install yapf
"<-- optionns
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
" }}}

call vundle#end()                   " required

" {{{ COLOR SCHEME
"set background=light
set background=dark
"let g:solarized_termcolors=256
set t_Co=256
"set t_Co=16
colorscheme solarized
" }}}


" {{{ FOLDING
set foldenable
set foldmethod=marker
"#--------------------
"zf#j - создает свертку от текущей позиции до # строк вниз
"zf/подстрока - создает свертку от текущей позиции и до первой найденной подстроки
"v/V и zf - выделение блока и создание свертки
"Команды для управления
"zc – свернуть блок
"zo – развернуть блок
"zM – закрыть все блоки
"zR – открыть все блоки
"za – инвертирование (если открыто – закрыть, если закрыто – открыть)
"zj - переход к следующей свертке
"zk - переход к предыдущей свертке
"zd - удалить свертку под курсором
"zD - удалить все свертки
"[z - перейти к началу текущей свертки
"]z - перейти к концу текущей свертки
"После закрытия vim все свертки забываться, для сохранения сверток в открытом файле используется команда :mkview, для загрузки - loadview.
" }}}

"set statusline=%F%m%r%h%w\ <\ FORMAT=%{&ff}\ %{&ft}\ <\ TYPE=%Y\ <\ POS=%l,%v\ %p%%\ <\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" {{{ OTHER OPTIONS

syntax on
filetype on
filetype plugin on
filetype plugin indent on

"backspace
set backspace=indent,eol,start

set shell=/bin/bash

set enc=utf-8        " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch        " инкреминтируемый поиск
set hlsearch         " подсветка результатов поиска
"set nu               " показывать номера строк
set scrolloff=5      " 5 строк при скролле за раз
set fileformats=unix,dos,mac    " привести конци строк в файле к виду unix,dos,mac

" disavle backup and swap-file
set nobackup         " no backup files
set nowritebackup    " only in case you don't want a backup file while editing 
set noswapfile       " no swap files

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
" }}}


" {{{ BIND KEYS
" Работа буфферами
map <C-q> :bd<CR>        " CTRL+Q - закрыть текущий буффер


map <C-L> :set list!<CR>
"map! <C-L> <C-O>:set list!<CR>

map <F9> :set paste<CR>
map <F10> :set nopaste<CR>

"disable replace
function s:ForbidReplace()
    if v:insertmode isnot# 'i'
        call feedkeys("\<Insert>", "n")
    endif
endfunction
augroup ForbidReplaceMode
    autocmd!
    autocmd InsertEnter  * call s:ForbidReplace()
    autocmd InsertChange * call s:ForbidReplace()
augroup END
" }}}
