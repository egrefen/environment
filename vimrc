if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

set encoding=utf-8
set term=xterm-256color
colorscheme cobalt

"""""""""""""""" NeoBundle """""""""""""""""""
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'tpope/vim-fugitive'

"""""""""" Airline: Vimscript powerline """"""
NeoBundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'molokai'
""""""""""""""""""""""""""""""""""""""""""""""

"""""""""" Async library for vim """""""""""""
NeoBundle 'Shougo/vimproc'
" After install, do: 
"    cd ~/.vim/bundle/vimproc
"    make -f your_machines_makefile
""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""" ctrl-p """""""""""""""""""""""""
" Kind of like Ctrl/Cmd-P in SublimeText, 
" opens files... 
NeoBundle 'kien/ctrlp.vim'
""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""" Hardmode """""""""""""""""""""""
" Introduces the 'call Hardmode' and 
" 'call EasyMode' commands
" Strictly pedagogical, for learning without 
" arrow keys / hjkl
NeoBundle 'wikitopian/hardmode'
""""""""""""""""""""""""""""""""""""""""""""""

"""""""""" Unite """""""""""""""""""""""""""""
" Unite: a multipurpose vim library
NeoBundle 'Shougo/unite.vim'
""""""""""""""""""""""""""""""""""""""""""""""

syntax on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for 
" tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
""""""""""""""""""""""""""""""""""""""""""""""

NeoBundleCheck
set laststatus=2
