"filetype off

let g:rustfmt_autosave = 0

call plug#begin('~/.vim/plugged')

" Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': './install.sh' }
Plug 'jlanzarotta/bufexplorer'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'vim-scripts/kwbdi.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'henrik/vim-indexed-search'
Plug 'nanotech/jellybeans.vim', {'rtp': 'jellybeans'}
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'gregsexton/gitv'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'bling/vim-airline'
Plug 'jremmen/vim-ripgrep'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'roxma/vim-paste-easy'
Plug 'christianrondeau/vim-base64'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'sebastianmarkow/deoplete-rust'

Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Plug 'cazador481/fakeclip.neovim'
Plug 'airblade/vim-gitgutter'
Plug 'cespare/vim-toml'
Plug 'fidian/hexmode'
Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'will133/vim-dirdiff'
Plug 'racer-rust/vim-racer'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'zchee/deoplete-jedi'

call plug#end()

"call deoplete#enable_logging('DEBUG', '/tmp/deoplete.log')
"
autocmd BufRead,BufNewFile *.tpl set filetype=gotexttmpl
"autocmd BufReadPost,BufNewFile *.rs setlocal filetype=rust
autocmd BufReadPost,BufNewFile  *.fizz setlocal filetype=anko


source ~/.vim/global.vim
source ~/.vim/bindings.vim
source ~/.vim/plugins.vim
