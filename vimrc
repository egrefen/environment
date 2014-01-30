if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

set visualbell t_vb= " No visual bell

nnoremap ; :
inoremap ii <ESC>

let mapleader = ","
let maplocalleader = ","

nnoremap <leader><space> :noh<cr> 
" Use <leader><space> to clean highlights

set encoding=utf-8
set term=xterm-256color
colorscheme cobalt

syntax on
filetype plugin indent on
au InsertEnter * :let @/="" " Disable highlighted search on insert mode
au InsertLeave * :let @/="" " Enable it back
au GUIEnter * set vb t_vb=     " No GUI visual bell
au VimEnter * set vb t_vb=     " No CLI visual bell

set foldmethod=syntax
set foldlevelstart=20

set number
nmap <Leader>r :set relativenumber!<CR>

autocmd BufEnter * silent! lcd %:p:h

""""""""""""""""""""""""""""""""""""""""""""""
" Shortcut to rapidly toggle `set list`
nmap <Leader>l :set list!<CR>
" Use the same symbols as TextMate for 
" tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""" NeoBundle """""""""""""""""""
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
""""""""""""""""""""""""""""""""""""""""""""""

""""""""""" Vim Fugitive """"""""""""""""""""
" Git package for vim
NeoBundle 'tpope/vim-fugitive'
""""""""""""""""""""""""""""""""""""""""""""""

""""""""""" Git Gutter """"""""""""""""""""
" Git gutter for vim
NeoBundle 'airblade/vim-gitgutter'
" Settings for cobalt colorscheme and dark terminal
highlight SignColumn ctermbg=black
highlight SignColumn guibg=#002F52
""""""""""""""""""""""""""""""""""""""""""""""

"""""""""" Airline: Vimscript powerline """"""
" Powerline clone (lightweight)
NeoBundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'molokai'
""""""""""""""""""""""""""""""""""""""""""""""

"""""""""" Async library for vim """""""""""""
" Not quite sure what this is for, but some
" packages need it...
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
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

NeoBundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

NeoBundle 'msanders/snipmate.vim'

NeoBundle 'majutsushi/tagbar'

NeoBundle 'ervandew/supertab'

NeoBundle 'davidhalter/jedi-vim'

NeoBundle 'Cpp11-Syntax-Support'

"""""""" Buffer stuff """"""""""""""
NeoBundle 'fholgado/minibufexpl.vim'
map <C-left> :bp<CR>
map <C-right> :bn<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>q :BW<CR>
""""""""""""""""""""""""""""""""""""

NeoBundleCheck
set laststatus=2
