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
        	\'github:ervandew/supertab',
            \'UltiSnips',
            \'The_NERD_tree',
            \'surround',
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
            \ 'github:bling/vim-airline',
            \ 'ag',
            \ 'github:jremmen/vim-ripgrep',
			\ 'vim-snippets',
			\ 'github:fatih/vim-go.git',
			\ 'github:plasticboy/vim-markdown',
			\ 'github:andrewstuart/vim-kubernetes',
			\ 'github:roxma/vim-paste-easy',
            \ 'github:christianrondeau/vim-base64',
            \ 'github:hashivim/vim-terraform',
            \ 'github:junegunn/fzf',
            \ 'github:junegunn/fzf.vim',
            \ 'github:Shougo/deoplete.nvim',
            \ 'github:zchee/deoplete-go',
            \ 'github:cazador481/fakeclip.neovim',
            \ 'github:airblade/vim-gitgutter.git',
			\ 'github:cespare/vim-toml',
			\ 'github:fidian/hexmode',
            \ 'github:rust-lang/rust.vim',
			\ 'github:autozimu/LanguageClient-neovim',
			\'Tabular',
			\'DirDiff',
			\'abolish',
			\'nginx',
            \],{'auto_install' : 0})


" \ 'github:racer-rust/vim-racer',
" \ 'github:sebastianmarkow/deoplete-rust',

if has('nvim')
	let g:deoplete#enable_at_startup = 1
	let g:vim_fakeclip_tmux_plus=1
end


" \"vim-xkbswitch"
" \"KeyboardLayoutSwitcher",
" \"github:fatih/vim-go.git",
" \"github:Valloric/YouCompleteMe.git"


source ~/.vim/gui.vim
