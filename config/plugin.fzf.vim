nnoremap ; :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>fg :GitFiles<CR>
nnoremap <leader>ft :Tags<CR>

nmap <leader>fw :call fzf#vim#files('', {'options': '-q '.shellescape(expand('<cword>'))})<CR>

command FZFPreview :call fzf#vim#gitfiles('', fzf#vim#with_preview('right'))


