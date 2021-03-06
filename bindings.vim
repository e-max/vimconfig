au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
map ; :

nmap <Leader>r :Rg <C-R><C-W>

nmap <Leader>f :FZF<CR>

" map < & > to indent blocks
vnoremap < <gv
vnoremap > >gv

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h




"my bindings

imap <F2> <ESC>:w<CR>
nmap <F2> :w<CR>
vmap <F2> <ESC>:w<CR>


imap <F3> <ESC>:cn<CR> 
nmap <F3> :cn<CR>
vmap <F3> <ESC>:cn<CR>

imap <S-F3> <ESC>:cp<CR> 
nmap <S-F3> :cp<CR>
vmap <S-F3> <ESC>:cp<CR>

imap <F4> <ESC>:lne<CR>
nmap <F4> :lne<CR>
vmap <F4> <ESC>:lne<CR>

imap <S-F4> <ESC>:lp<CR>
nmap <S-F4> :lp<CR>
vmap <S-F4> <ESC>:lp<CR>

imap <F9> <ESC>:make<CR> 
nmap <F9> :make<CR>
vmap <F9> <ESC>:make<CR>


cmap w!! w !sudo tee % >/dev/null

" command! -range JSON <line1>,<line2>!python -m json.tool
command! -range JSON <line1>,<line2>!jq ''


set <F20>=[27;5;9~
inoremap <F20> <C-R>=UltiSnips#ListSnippets()<CR>
inoremap <F10> <C-R>=UltiSnips#ListSnippets()<CR>


" TagBar
":map <F11> :TagbarToggle<CR>

