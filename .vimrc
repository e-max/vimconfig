"filetype off

let g:rustfmt_autosave = 0

call plug#begin('~/.vim/plugged')

Plug 'jlanzarotta/bufexplorer'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'vim-scripts/kwbdi.vim'
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'henrik/vim-indexed-search'
Plug 'nanotech/jellybeans.vim', {'rtp': 'jellybeans'}
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'gregsexton/gitv'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'bling/vim-airline'
"Plug 'jremmen/vim-ripgrep'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'roxma/vim-paste-easy'
Plug 'christianrondeau/vim-base64'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

Plug 'airblade/vim-gitgutter'
Plug 'cespare/vim-toml'
Plug 'fidian/hexmode'
Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'will133/vim-dirdiff'
Plug 'flazz/vim-colorschemes'
" needed for gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lambdalisue/suda.vim'
Plug 'vimwiki/vimwiki'
Plug 'liuchengxu/vista.vim'
Plug 'rhysd/vim-grammarous'
Plug 'lyokha/vim-xkbswitch'
" {{{
  let g:XkbSwitchEnabled = 1
  let g:XkbSwitchLib = '/usr/lib/libxkbswitch.so'
  let g:XkbSwitchNLayout = 'us'
  let g:XkbSwitchILayout = 'us'

  function! RestoreKeyboardLayout(key)
    call system("xkb-switch -s 'us'")
    execute 'normal! ' . a:key
  endfunction

  nnoremap <silent> р :call RestoreKeyboardLayout('h')<CR>
  nnoremap <silent> о :call RestoreKeyboardLayout('j')<CR>
  nnoremap <silent> л :call RestoreKeyboardLayout('k')<CR>
  nnoremap <silent> д :call RestoreKeyboardLayout('l')<CR>
" }}}



Plug 'ryanoasis/vim-devicons'

call plug#end()

autocmd BufRead,BufNewFile *.tpl set filetype=gotexttmpl
autocmd BufReadPost,BufNewFile  *.fizz setlocal filetype=anko

nmap <leader>u2d "mciw<C-R>=strftime("%c", @m)<CR><ESC>


source ~/.vim/global.vim
source ~/.vim/bindings.vim
source ~/.vim/plugins.vim
