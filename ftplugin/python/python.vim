
set ai sw=4 sts=4 et

" выключить автосоздание quickfix листа с ошибками - это ломает поведение
" vimgrep
let g:pyflakes_use_quickfix = 0

set lcs=tab:>-,trail:-
set list

iabbr #u # -*- coding: utf-8 -*-

set suffixesadd=.py

