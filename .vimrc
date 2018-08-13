packadd minpac

call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('itchyny/lightline.vim')
call minpac#add('tpope/vim-surround')
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('tpope/vim-sensible')
call minpac#add('plasticboy/vim-markdown')
call minpac#add('ajh17/spacegray.vim')
call minpac#add('leafgarland/typescript-vim')
" call minpac#update()

set encoding=utf-8

inoremap jj <Esc>

let mapleader="\<Space>"
nnoremap <C-h> <C-w>h
nnoremap <leader>h <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <leader>j <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <leader>k <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>l <C-w>l

nnoremap <leader>fs :w<enter>

let g:vim_markdown_folding_disabled = 1
set conceallevel=2

