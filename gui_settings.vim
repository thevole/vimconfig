set guifont=Source\ Code\ Pro\ Light:h15
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set guioptions-=L " Removes left hand scroll bar

" colorscheme macvim
" colorscheme vibrantink
colorscheme wombat256
" colorscheme grb256
" colorscheme jellybeans

if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif
