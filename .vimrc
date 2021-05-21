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
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'henrik/vim-indexed-search'
Plug 'nanotech/jellybeans.vim', {'rtp': 'jellybeans'}
Plug 'scrooloose/nerdcommenter'
Plug 'gregsexton/gitv'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'bling/vim-airline'
Plug 'roxma/vim-paste-easy'
Plug 'cespare/vim-toml'
Plug 'fidian/hexmode'
Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'will133/vim-dirdiff'
Plug 'flazz/vim-colorschemes'
" needed for gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'lambdalisue/suda.vim'
Plug 'vimwiki/vimwiki'
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
Plug 'kyazdani42/nvim-web-devicons'

Plug 'folke/lsp-colors.nvim'

Plug 'neovim/nvim-lspconfig'

"required for gitsigns and telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'

Plug 'lewis6991/gitsigns.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-telescope/telescope.nvim'

Plug 'hrsh7th/nvim-compe'

Plug 'simrat39/rust-tools.nvim'

Plug 'fenetikm/falcon'
Plug 'tomasiser/vim-code-dark'
Plug 'marko-cerovac/material.nvim'
Plug 'mhartington/oceanic-next'


Plug 'onsails/lspkind-nvim'

Plug 'folke/lsp-trouble.nvim'

Plug 'rktjmp/lush.nvim'
Plug 'metalelf0/jellybeans-nvim'

Plug 'kyazdani42/nvim-tree.lua'

Plug 'famiu/feline.nvim'
Plug 'glepnir/lspsaga.nvim'

call plug#end()

lua << EOF
require('mylsp')
EOF

source ~/.vim/global.vim
source ~/.vim/bindings.vim
source ~/.vim/plugins.vim
