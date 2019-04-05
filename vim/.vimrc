set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = "."

"for install:
"1. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"2. Launch vim and run :PluginInstall

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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
"let g:solarized_italic = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
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


call vundle#end()                   " required

" {{{ COLOR SCHEME
"set background=light
set background=dark
let g:solarized_termcolors=256
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
map <leader>gf :e <cfile><cr>   " работает как gf, но если файла нет то он будет создан

map <C-L> :set list!<CR>
"map! <C-L> <C-O>:set list!<CR>

map <F9> :set paste<CR>
map <F10> :set nopaste<CR>

" limit the width of e-mail text to 72 characters
au BufRead /tmp/mutt-* set tw=72

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
