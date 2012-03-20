
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


abbr ld logger.debug(u"")<ESC>hi
abbr lc logger.critical(u"")<ESC>hi
abbr li logger.info(u"")<ESC>hi
abbr lw logger.warning(u"")<ESC>hi
abbr le logger.error(u"")<ESC>hi
abbr lex logger.exception(u"")<ESC>hi
abbr il import logging
abbr gl logger = logging.getLogger("")<ESC>hi
abbr ls self.logger.info("Start")<ESC>


iabbr pydev from pydev.pydevd import settrace; settrace() 


iabbr @p @param:<ESC>i
iabbr @r @return:<ESC>A
iabbr @t @type: C{}<ESC>hhhhi
iabbr @y @rtype: C{}<ESC>hhhi
iabbr #u # -*- coding: utf-8 -*-


iabbr sf self.fail()<ESC>i
iabbr sfi self.failIf()<ESC>i
iabbr sfu self.failUnless()<ESC>i
iabbr sfue self.failUnlessEqual()<ESC>i
iabbr sfie self.failIfEqual()<ESC>i

iabbr idf from twisted.internet import defer
iabbr idfr from twisted.internet import defer, reactor

cabbrev ** **/*.py



abbr ered \x1B[31;1m \x1B[0m<ESC>hhhhhhhi
abbr egreen \x1B[32;1m \x1B[0m<ESC>hhhhhhhi
abbr eyellow \x1B[33;1m \x1B[0m<ESC>hhhhhhhi
abbr eblue \x1B[34;1m \x1B[0m<ESC>hhhhhhhi
abbr emagenta \x1B[35;1m \x1B[0m<ESC>hhhhhhhi
abbr ecyan \x1B[36;1m \x1B[0m<ESC>hhhhhhhi
abbr ewhite \x1B[37;1m \x1B[0m<ESC>hhhhhhhi


abbr pred print "\x1B[31;1m \x1B[0m"<ESC>hhhhhhhhi
abbr pgreen print "\x1B[32;1m \x1B[0m"<ESC>hhhhhhhhi
abbr pyellow print "\x1B[33;1m \x1B[0m"<ESC>hhhhhhhhi
abbr pblue print "\x1B[34;1m \x1B[0m"<ESC>hhhhhhhhi
abbr pmagenta print "\x1B[35;1m \x1B[0m"<ESC>hhhhhhhhi
abbr pcyan print "\x1B[36;1m \x1B[0m"<ESC>hhhhhhhhi
abbr pwhite print "\x1B[37;1m \x1B[0m"<ESC>hhhhhhhhi

