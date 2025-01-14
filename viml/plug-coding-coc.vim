""" plug-coding-coc.vim -- Coc settings

Plug 'neoclide/coc.nvim', {'branch': 'release'}

""------------------------------------------------------------------------------
"" COC config
""------------------------------------------------------------------------------

"" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
"" delays and poor user experience.
set updatetime=300

"" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"" Always show the signcolumn, otherwise it would shift the text each time
"" diagnostics appear/become resolved.
set signcolumn=yes

"" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent! call CocActionAsync('highlight')

"" Script defined functions
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

""------------------------------------------------------------------------------
"" Keymaps
""------------------------------------------------------------------------------

"" Use tab for trigger completion with characters ahead and navigate.
"" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
"" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()['selected'] != '-1' ? "\<C-y>" : "\<C-g>u\<CR>"
else
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"" GoTo code navigation.
nmap <silent> <C-l>d <Plug>(coc-definition)
nmap <silent> <C-l>t <Plug>(coc-type-definition)
nmap <silent> <C-l>i <Plug>(coc-implementation)
nmap <silent> <C-l>r <Plug>(coc-references)
nmap <silent> <C-l>a <Plug>(coc-codeaction)
nmap <silent> <C-l>c :<C-U>CocCommand<CR>
nmap <silent> <C-l>C :<C-U>CocList<CR>

"" Use k to show documentation in preview window.
nnoremap <silent> <C-l>k :<C-U>call <SID>show_documentation()<CR>

"" Show diagnostics messages
nnoremap <silent> <C-l>m :<C-U>CocList diagnostics<CR>
nmap <silent> <C-l>n <Plug>(coc-diagnostic-next)
nmap <silent> <C-l>p <Plug>(coc-diagnostic-prev)

"" Other shortcuts
"" Symbol renaming.
nmap <C-l>R <Plug>(coc-rename)
"" Formatting selected code
nmap <C-l>F <Plug>(coc-format-selected)

"" Use <TAB> for selections ranges.
"" NOTE: Requires 'textDocument/selectionRange' support from the language server.
"" coc-tsserver, coc-python are the examples of servers that support it.
"nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
