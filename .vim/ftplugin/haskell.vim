let b:package_root = fnamemodify(findfile('stack.yaml', '.;'), ':p:h')
autocmd BufEnter *.hs exec 'lcd ' . b:package_root

" Tags
let b:ctags_command = 'find -name "*.hs" -exec fast-tags -v {} +'
let b:fzf_tags_command = 'fast-tags -v'
