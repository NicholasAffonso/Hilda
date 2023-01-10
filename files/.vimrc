" VimPlug ---------- {{{
call plug#begin('~ /.vim/plugged')

Plug 'pangloss/vim-javascript'

call plug#end()
" ------------------ }}}

" GLOBAL ---------------------------------------------------------------- {{{

" Enter the current millenium
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin onautocompletion

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to the file.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 2 spaces.
set shiftwidth=2

" Set tab width to 2 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" The encoding shoud be utf-8 to active font icons
set encoding=UTF-8

" Enable mouse support
set mouse=a

" To auto-complete when press { ctrl + x } followed by { ctrl + o } while writing html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=20

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Provides tab-completion for all file-related tasks
set path+=**

" Enable auto completion menu after pressing TAB.
set wildmenu

" Disable swp files
set noswapfile

" No BOM (Byte-Order Mark),
" i set this to work with database languages
" in my case i ever get error on the first line
" the i found out it's because of this order mark
set nobomb

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" --------}}}
