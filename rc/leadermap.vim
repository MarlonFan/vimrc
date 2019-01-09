let mapleader = ','

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

"
" Git
"
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gp :Gpush<CR>
nnoremap <silent> <leader>gb :Gblame<CR>

"
" go
"
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>v  <Plug>(go-vet)
autocmd FileType go nmap <leader>tf <Plug>(go-test-func)

"
" coc
"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> gk :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Shortcuts for denite interface

" show buffers of current workspace
nnoremap <silent> <leader>de :<C-u>Denite buffer<cr>
" Show symbols of current buffer
nnoremap <silent> <leader>do  :<C-u>Denite coc-symbols<cr>
" Show diagnostics of current workspace
nnoremap <silent> <leader>da  :<C-u>Denite coc-diagnostic<cr>
" Show available commands
nnoremap <silent> <leader>dc  :<C-u>Denite coc-command<cr>
" Show available services
nnoremap <silent> <leader>ds  :<C-u>Denite coc-service<cr>
" Show links of current buffer
nnoremap <silent> <leader>dl  :<C-u>Denite coc-link<cr>

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

"
" keymap
"
imap jj <Esc>
nmap <Leader>fe  :FZFMru<CR>
nmap <Leader>fp  :Files<CR>
nmap <Leader>fs  :Ag<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>l :BufOnly<CR> " clear other buffer

" <Leader>c will delete my code in visual mode, why!?
map <Leader>c <Nop>

