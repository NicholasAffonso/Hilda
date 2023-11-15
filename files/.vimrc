" VimPlug ---------- {{{

" Instala o VimPlug se não for encontrado

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Roda o PlugInstall se houver plugins perdidos

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~ /.vim/plugged')

" Syntax highlighting plugin
Plug 'pangloss/vim-javascript'

" Habilita o syntax highlight para JSDocs.
let g:javascript_plugin_jsdoc = 1
" Enables some additional syntax highlighting for NGDocs. Requires JSDoc plugin to be enabled as well.
let g:javascript_plugin_ngdoc = 1
" Enables syntax highlighting for Flow.
let g:javascript_plugin_flow = 1

call plug#end()

" Fim VimPlug ------------------------------- }}}

" CONFIGURAÇÃO GLOBAL ----------------------- {{{

" Habilita a detecção de tipo de arquivo.
filetype on

" Habilita o plugin de acordo com o tipo de arquivo detectado.
filetype plugin on 

" Carrega um arquivo de identação para o tipo de arquivo detectado.
filetype indent on

" Liga o syntax highlighting.
syntax on

" Habilita numeração das linhas.
set number

" Habilita o highlight horizontalmente na linha que está posicionado o cursor.
set cursorline

" Tabulação com 2 espaços.
set shiftwidth=2

" Tabulação com 2 colunas.
set tabstop=2

" Usa o caractere espaço ao invés de tab.
set expandtab

" Encode utf-8, isso habilita acentos e icones
set encoding=UTF-8

" Habilita suporte ao mouse
set mouse=a

" Para autocompletar quando pressiona { ctrl + x } seguido de { ctrl + o } enquanto escreve html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Não deixa o cursor rolar para abaixo ou acima de X linhas.
set scrolloff=15

" Enquanto procura em um arquivo marca com highlight os characteres que correspondem.
set incsearch

" Ignora maiusculas enquanto busca.
set ignorecase

" Sobrescreve o ignorecase se estiver buscando por maiusculas.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Mostra o modo que você está
set showmode

" Marca palavras correspondentes a sua pesquisa
set showmatch

" Usa highlight enquanto faz uma pesquisa.
set hlsearch

" Ajusta o tamanho do histórico de comandos, o padrão é 20.
set history=1000

" Provides tab-completion for all file-related tasks
set path+=**

" Habilita autocomplete no menu pressionando TAB.
set wildmenu

" Disabilita a criação de arquivos .swp
set noswapfile

" Remove BOM (Byte-Order Mark),
" i set this to work with database languages
" in my case i ever get a error on the first line
" then i found out it's solution
set nobomb

" Aqui uma lista de arquivos que não interessam para o Vim.
" O wildmenu vai ignorar os arquivos com as seguintes extensões.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" ------------------ }}}

