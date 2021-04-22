" Increase update time speed
set updatetime=300
" Give more space for displaying messages.
set cmdheight=1
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Trigger Completion
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" make <cr> automatically select the first completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> <F12> <Plug>(coc-references)


