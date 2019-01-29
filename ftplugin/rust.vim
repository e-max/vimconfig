
nmap <silent> <F6> :call LanguageClient_textDocument_rename()<CR>
nmap <LEADER>gl :call LanguageClient_textDocument_documentSymbol()<CR>

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
 
 
nmap gd <Plug>(rust-def)
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <leader>gd :call LanguageClient#textDocument_hover()<CR>
set tabstop=4

