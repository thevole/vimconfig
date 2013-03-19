set nocompatible
filetype plugin on

colorscheme macvim
"colorscheme vibrantink
"colorscheme wombat256

set guifont=Source\ Code\ Pro\ Light:h15
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set guioptions-=L " Removes left hand scroll bar

" kj will exit insert mode quickly
inoremap kj <Esc>

set wildmenu
set wildmode=full

set history=200

source $VIMRUNTIME/macros/matchit.vim
