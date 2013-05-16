filetype off

source ~/.vim/global.vim
source ~/.vim/bindings.vim
source ~/.vim/plugins.vim
source ~/.vim/vim-addon-manager.vim




call vam#ActivateAddons([
			\"ack",
			\"align",
			\"bufexplorer.zip",
			\"Command-T",
			\"EasyMotion",
			\"fugitive",
			\"kwbdi",
			\"lodgeit",
			\"matchit.zip",
			\"pyflakes%2441",
			\"repeat",
            \"UltiSnips",
			\"SuperTab%1643",
			\"The_NERD_tree",
			\"surround",
			\"tracwiki",
			\"vividchalk",
			\"KeyboardLayoutSwitcher",
			\"ZoomWin",
			\"IndexedSearch",
			\"jellybeans",
			\"Powerline",
            \"The_NERD_Commenter",
            \"Tagbar",
            \"ragtag",
            \ 'github:tpope/vim-eunuch',
            \ 'github:nvie/vim-rst-tables',
            \ 'github:gregsexton/gitv',
            \ "Syntastic",
			\ "vimproc",
			\ "github:stargrave/IviCC",
			\ "github:bitc/vim-hdevtools",
			\],{'auto_install' : 0})




source ~/.vim/gui.vim
