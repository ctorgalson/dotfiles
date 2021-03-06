" Vim appearance.

set encoding=UTF-8

" Make sure terminal is set to use 256 colours where possible.
set t_Co=256

" Set color scheme.

" For lightline.
let g:lightline = {
\   'colorscheme': 'solarized',
\ }

" For the editor in general.
colorscheme solarized

" Set background.
set background=dark

" Display location of 80th column.
if exists('&colorcolumn')
    set colorcolumn=80
endif

" Indentation.
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

" Python.
au FileType python set shiftwidth=4

" Syntax highlighting.
syntax on

set foldmethod=syntax

" HTML highlighting.
if has("autocmd")
  " Drupal *.twig files.
  augroup html
    autocmd BufRead,BufNewFile *.twig set filetype=html
  augroup END
endif

" PHP highlighting.
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.drush set filetype=php
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.theme set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

" If you like SQL syntax highlighting inside Strings:
let php_sql_query = 1

" For highlighting the Baselib methods:
"let php_baselib = 1

" Enable HTML syntax highlighting inside strings:
let php_htmlInStrings = 1

"Enable folding for classes and functions:
let php_folding = 1
let js_folding = 1

" Selecting syncing method:
" x = -1 to sync by search (default),
" x > 0 to sync at least x lines backwards,
" x = 0 to sync from start:
"let php_sync_method = 0

" *.sass, *.scss highlighting.
if has('autocmd')
  autocmd FileType sass,scss,stylus syn cluster sassCssAttributes add=@cssColors
endif

" Remove trailing whitespace on save.
if has('autocmd')
  autocmd BufWritePre *.js :%s/\s\+$//e
  autocmd BufWritePre *.html :%s/\s\+$//e
  autocmd BufWritePre *.scss :%s/\s\+$//e
  autocmd BufWritePre *.less :%s/\s\+$//e
endif

" Vim behaviour.

map <C-Space> :za<CR>

map <Leader>n :NERDTreeToggle<CR>

set number

set backspace=indent,eol,start

set hlsearch

" NERDTree.
if has('autocmd')
  autocmd vimenter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
endif

" Clipboard.
set clipboard=unnamed

" Use bash in Vim, not fish (or what-have-you):
set shell=/bin/bash

" Enable mouse positioning of cursor (even in terminal):
set mouse=a

" Toggle paste with F2 (prevents disastrous auto-indenting when pasting
" already indented code):
set pastetoggle=<F2>

" Soft-wrap text:
set wrap
set linebreak
set nolist  " list disables linebreak

" Highlight current line:
set cursorline

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Fix Vim's messed-up regexing
nnoremap / /\v
vnoremap / /\v

" Try again with xdebug. Don't know why I bother.

" if has("autocmd")
"     autocmd VdebugOpt debug_file=~/vdebug.log
"     autocmd VdebugOpt debug_file_level=2
" endif

" Unf*ck vdebug_options per https://git.io/Jf1qA.
if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif

" Stops execution at the first line.
let g:vdebug_options['break_on_open'] = 0
let g:vdebug_options['max_children'] = 128

" Use the compact window layout.
let g:vdebug_options['watch_window_style'] = 'compact'

" Because it's the company default.
let g:vdebug_options['ide_key'] = 'PHPSTORM'

" Need to set as empty for this to work with Vagrant boxes.
let g:vdebug_options['server'] = ""

" Mapping '/remote/path' : '/local/path'.
"
" {'/var/www': getcwd()} handles all Docksal! Thanks to jimafisk's video on
" d8 debugging in Vim: https://youtu.be/IcWoCy4sjd0.
let g:vdebug_options['path_maps'] = {'/var/www': getcwd()}
