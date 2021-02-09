" LeaderF settings
" Modified by peromage on 2021/02/05

if exists('g:loaded_rice_leaderf')
    finish
endif
let g:loaded_rice_leaderf = 1
Plug 'Yggdroot/LeaderF', { 'do': './install.sh'}

let g:Lf_ShowRelativePath = 1
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 1
let g:Lf_UseVersionControlTool = 1
let g:Lf_IgnoreCurrentBufferName = 1
"let g:Lf_StlSeparator = {'left': "\ue0b0", 'right': "\ue0b2", 'font': 'DejaVu Sans Mono for Powerline'}
let g:Lf_ShowHidden = 1
let g:Lf_JumpToExistingWindow = 0
let g:Lf_WindowPosition = 'bottom'
let g:Lf_WindowHeight = '0.2'
let g:Lf_PreviewHorizontalPosition = 'right'
let g:Lf_PopupPreviewPosition = 'top'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewResult = {
\   'File': 0,
\   'Buffer': 0,
\   'Mru': 0,
\   'Tag': 0,
\   'BufTag': 0,
\   'Function': 0,
\   'Line': 0,
\   'Colorscheme': 0,
\   'Jumps': 0
\ }

" Normal
nnoremap <silent> <leader>fp :Leaderf file --no-ignore<CR>
nnoremap <silent> <leader>fm :Leaderf mru<CR>
nnoremap <silent> <leader>fb :Leaderf buffer<CR>
nnoremap <silent> <leader>fB :Leaderf buffer --tabpage<CR>
nnoremap <silent> <leader>fl :Leaderf line<CR>
nnoremap <silent> <leader>fL :Leaderf line --all<CR>
nnoremap <silent> <leader>ft :Leaderf bufTag<CR>
nnoremap <silent> <leader>fT :Leaderf tag<CR>
nnoremap <silent> <leader>ff :Leaderf function<CR>
nnoremap <silent> <leader>fF :Leaderf function --all<CR>
nnoremap <silent> <leader>fg :Leaderf rg --all-buffers<CR>
nnoremap <silent> <leader>fG :Leaderf rg<CR>
" Search for current word
nnoremap <silent> <leader>fcp :Leaderf file --no-ignore --cword<CR>
nnoremap <silent> <leader>fcb :Leaderf buffer --cword<CR>
nnoremap <silent> <leader>fcl :Leaderf line --cword<CR>
nnoremap <silent> <leader>fct :Leaderf tag --cword<CR>
nnoremap <silent> <leader>fcf :Leaderf function --all --cword<CR>
nnoremap <silent> <leader>fcg :Leaderf rg --cword<CR>
" Resume
nnoremap <silent> <leader>frr :Leaderf --recall<CR>
nnoremap <silent> <leader>frp :Leaderf file --recall<CR>
nnoremap <silent> <leader>frb :Leaderf buffer --recall<CR>
nnoremap <silent> <leader>frl :Leaderf line --recall<CR>
nnoremap <silent> <leader>frt :Leaderf tag --recall<CR>
nnoremap <silent> <leader>frf :Leaderf function --recall<CR>
nnoremap <silent> <leader>frg :Leaderf rg --recall<CR>
" Interactive
nnoremap <silent> <leader>fii :Leaderf self<CR>
nnoremap <silent> <leader>fig :LeaderfRgInteractive<CR>
nnoremap <silent> <leader>fif :Leaderf<Space>
