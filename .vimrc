filetype off

source ~/.vim/global.vim
source ~/.vim/bindings.vim
source ~/.vim/plugins.vim
source ~/.vim/vim-addon-manager.vim




call vam#ActivateAddons([
            \'align',
            \'bufexplorer.zip',
            \'EasyMotion',
            \'fugitive',
            \'kwbdi',
            \'lodgeit',
            \'matchit.zip',
            \'pyflakes%2441',
            \'repeat',
        	\'SuperTab%1643',
            \'UltiSnips',
            \'The_NERD_tree',
            \'surround',
            \'tracwiki',
            \'vividchalk',
            \'ZoomWin',
            \'IndexedSearch',
            \'jellybeans',
            \'The_NERD_Commenter',
            \'Tagbar',
            \'ragtag',
            \ 'github:tpope/vim-eunuch',
            \ 'github:gregsexton/gitv',
            \ 'Syntastic',
            \ 'vimproc',
            \ 'github:stargrave/IviCC',
            \ 'github:bitc/vim-hdevtools',
            \ 'ghcmod',
            \ 'github:ujihisa/neco-ghc',
            \ 'github:dag/vim2hs',
            \ 'github:bling/vim-airline',
            \ 'Textile_for_VIM',
            \ 'jedi-vim',
            \ 'ag',
			\ 'vim-snippets',
			\ 'github:fatih/vim-go.git',
			\'KeyboardLayoutSwitcher',
			\'github:plasticboy/vim-markdown',
			\'DirDiff',
			\'abolish',
            \'github:saltstack/salt-vim.git',
            \],{'auto_install' : 0})


" \"vim-xkbswitch"
" \"KeyboardLayoutSwitcher",
" \"github:fatih/vim-go.git",
" \"github:Valloric/YouCompleteMe.git"


source ~/.vim/gui.vim
