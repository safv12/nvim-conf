let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" Close fzf windows when ESC
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :Ag<CR>
