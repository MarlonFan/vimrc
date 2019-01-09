autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>v  <Plug>(go-vet)
autocmd FileType go nmap <leader>tf <Plug>(go-test-func)

autocmd User FzfStatusLine call <SID>fzf_statusline()

autocmd FileType php setl iskeyword+=$
