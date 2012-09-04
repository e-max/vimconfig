
set ai sw=4 sts=4 et

" выключить автосоздание quickfix листа с ошибками - это ломает поведение
" vimgrep
let g:pyflakes_use_quickfix = 0 

set lcs=tab:>-,trail:-
set list

"ROPE settings

let ropevim_vim_completion=1
let ropevim_extended_complete=1
map <C-c>i :call RopeAutoImport()<CR>
map <C-c>o :call RopeOrganizeImports()<CR>


iabbr pydev from pydev.pydevd import settrace; settrace() 


iabbr #u # -*- coding: utf-8 -*-
iabbr sf self.fail()<ESC>i
iabbr sfi self.failIf()<ESC>i
iabbr sfu self.failUnless()<ESC>i
iabbr sfue self.failUnlessEqual()<ESC>i
iabbr sfie self.failIfEqual()<ESC>i


let g:pymode_breakpoint = 0
let g:pymode_folding = 0

