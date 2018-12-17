packadd minpac

set rtp+=/usr/local/opt/fzf

call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('itchyny/lightline.vim')
call minpac#add('tpope/vim-surround')
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('tpope/vim-sensible')
call minpac#add('plasticboy/vim-markdown')
call minpac#add('ajh17/spacegray.vim')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('tpope/vim-speeddating')
call minpac#add('jceb/vim-orgmode')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('purescript-contrib/purescript-vim')
call minpac#add('frigoeu/psc-ide-vim')
"call minpac#add('maxbrunsfeld/vim-yankstack')
call minpac#add('junegunn/fzf.vim')
" call minpac#update()


if has('nvim')
   call minpac#add('ndmitchell/ghcid')
   call minpac#add('https://gitlab.com/Lenovsky/nuake.git')
endif

set encoding=utf-8
set spelllang=en_us
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.org setlocal spell

inoremap jj <Esc>

command! PackUpdate call minpac#update()

let mapleader="\<Space>"
let maplocalleader=","
nnoremap <C-h> <C-w>h
nnoremap <leader>h <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <leader>j <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <leader>k <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>l <C-w>l
imap <Tab> <C-P>

nnoremap <leader>fs :w<enter>

"nmap <leader>p <Plug>yankstack_substitute_older_paste
"nmap <leader>P <Plug>yankstack_substitute_newer_paste

if has('nvim')
    nnoremap <leader>` :Nuake<CR>
    tnoremap <leader>` <C-\><C-n>:Nuake<CR>
"    inoremap <leader>` <C-\><C-n>:Nuake<CR>
endif

" FZF
let g:fzf_layout = { 'up': '~40%' }

nnoremap <leader>f :Files<cr>
nnoremap <leader>r :Rg<space>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>] :Tags<CR>
nnoremap <leader>b] :BTags<CR>

let g:vim_markdown_folding_disabled = 1
set conceallevel=2

set splitright
set splitbelow
set hidden
