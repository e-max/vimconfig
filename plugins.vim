
" NerdTree

let NERDTreeRespectWildIgnore=1


" Fugitive
set diffopt+=vertical


" gits plugin
let g:gist_clip_command = 'xclip -selection clipboard'



"UltiSnips settings // don't use because switched to coc-snippets
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/e-max/.vim/mysnippets/"]
" 



"  vim-markdown
let g:vim_markdown_folding_disabled = 1



"" Support for rust 

if has('nvim')
    let g:vim_fakeclip_tmux_plus=1
end

let g:syntastic_rust_checkers = []

let g:rustfmt_autosave = 1


" Vista
"
let g:vista_default_executive="coc"
let g:vista#renderer#enable_icon = 1
" Find symbol of current document.
nnoremap <silent> <leader>s  :Vista finder<cr>
nnoremap <silent> <F11>  :Vista!!<cr>

