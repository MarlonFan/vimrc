augroup common
    autocmd!

    autocmd FileType go nmap <leader>t  <Plug>(go-test)
    autocmd FileType go nmap <leader>b  <Plug>(go-build)
    autocmd FileType go nmap <leader>v  <Plug>(go-vet)
    autocmd FileType go nmap <leader>tf <Plug>(go-test-func)

    autocmd FileType php setl iskeyword+=$

    autocmd FileType html setl iskeyword-=58
augroup end
