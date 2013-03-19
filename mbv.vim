set nocompatible
source ~/.vim/filetypes.vim
source ~/.vim/gui_settings.vim
source ~/.vim/settings.vim
source ~/.vim/statusline.vim

execute pathogen#infect()

" Fugitive status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

source ~/.vim/mappings.vim

" kj will exit insert mode quickly
inoremap kj <Esc>

set wildmenu
set wildmode=full

set history=200

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

nnoremap & :&&<Enter>
xnoremap & :&&<Enter>

xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

nnoremap <silent> <C-l> : <C-u> nohlsearch <CR><C-l>

" Search Dash for word under cursor
function! SearchDash()
  let s:browser = "/usr/bin/open"
  let s:wordUnderCursor = expand("<cword>")
  let s:url = "dash://".s:wordUnderCursor
  let s:cmd ="silent ! " . s:browser . " " . s:url
  execute s:cmd
  redraw!
endfunction
map <leader>d :call SearchDash()<CR>

source $VIMRUNTIME/macros/matchit.vim

nmap <buffer> <F9> <Plug>(xmpfilter-run)
xmap <buffer> <F9> <Plug>(xmpfilter-run)
imap <buffer> <F9> <Plug>(xmpfilter-run)

nmap <buffer> <F8> <Plug>(xmpfilter-mark)
xmap <buffer> <F8> <Plug>(xmpfilter-mark)
imap <buffer> <F8> <Plug>(xmpfilter-mark)

set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Fugitive extras
if has("autocmd")
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif
