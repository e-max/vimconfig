
" Приравниваем регистр "" регистру "*
set clipboard=unnamed
set clipboard+=unnamedplus

set encoding=utf-8

set nocompatible          " We're running Vim, not Vi!
set hidden

syntax on                 " Enable syntax highlighting

filetype on
filetype plugin on " Enable filetype-specific indenting and plugins
filetype indent on 


set autowriteall 
set nobackup
set noswapfile
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set infercase     " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop


"Search options
nnoremap / /\v
vnoremap / /\v
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set gdefault        " автоматически добавляет /g  к каждой строке замены (то есть замены происходят по всей строке)

set splitright    " vsplit будет открывать окно справа


command -bar -nargs=1 OpenURL :!firefox <args>

set completeopt=menu
set complete-=1

set path=.,,**


" improve speed on looong lines.
set synmaxcol=200

set wildmenu
set wildmode=full

""" we need this to always open quickfix in the bottom of window
autocmd FileType qf wincmd J

colorscheme jellybeans









