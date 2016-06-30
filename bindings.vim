
map ; :

nmap <Leader>a :Ag <C-R><C-W>

nmap <Leader>g :vim <C-R><C-W> **

nmap <Leader>f :CommandT<CR>

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

command! -range JSON <line1>,<line2>!python -m json.tool

" по Ctrl-Enter вставляем пустую строку в Mormal Mode
map <C-CR> o<ESC>



set <F20>=[27;5;9~
inoremap <F20> <C-R>=UltiSnips#ListSnippets()<CR>
