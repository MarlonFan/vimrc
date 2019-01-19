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
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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
nnoremap <silent> <leader>de  :<C-u>Denite buffer<cr>
nnoremap <silent> <leader>dp  :<C-u>Denite file/rec<cr>
nnoremap <silent> <leader>do  :<C-u>Denite coc-symbols<cr>
nnoremap <silent> <leader>da  :<C-u>Denite coc-diagnostic<cr>
nnoremap <silent> <leader>dc  :<C-u>Denite coc-command<cr>
nnoremap <silent> <leader>ds  :<C-u>Denite coc-service<cr>
nnoremap <silent> <leader>dl  :<C-u>Denite coc-link<cr>

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

imap jj <Esc>
noremap  <Leader>w :w<CR>
noremap  <Leader>q :q<CR>
nnoremap <Leader>bl :BufOnly<CR> " clear other buffer

nnoremap <leader>fp :<C-u>LeaderfFile<cr>
nnoremap <leader>fe :<C-u>LeaderfBufferAll<cr>
nnoremap <leader>fs :<C-u>Leaderf rg<cr>
nnoremap <leader>ff :ALEFix<cr>

" <Leader>c will delete my code in visual mode, why!?
map <Leader>c <Nop>

map <C-w>n :bnext<CR>
map <C-w>p :bprev<CR>

nmap <C-w>[ :vertical resize -6<CR>
nmap <C-w>] :vertical resize +6<CR>
