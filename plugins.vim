
let g:kls_switcherPath = "~/.vim/vim-addons/KeyboardLayoutSwitcher/bin/KeyboardLayoutSwitcher"

"Syntastic settings
let g:syntastic_python_checker_args='--ignore=E501'
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_pyflakes_args='--ignore=E501'
let g:syntastic_python_pylint_args='--ignore=E501'
let g:syntastic_python_python_args='--ignore=E501'




" gits plugin
let g:gist_clip_command = 'xclip -selection clipboard'



" python-mode settings
let g:pymode_utils_whitespaces = 0
let g:pymode_breakpoint = 0
let g:pymode_folding = 0


"ROPE settings

let ropevim_vim_completion=1
let ropevim_extended_complete=1
map <C-c>i :call RopeAutoImport()<CR>
map <C-c>o :call RopeOrganizeImports()<CR>

"UltiSnips settings
let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/e-max/.vim/snippets/"]
