
let g:kls_switcherPath = "~/.vim/vim-addons/KeyboardLayoutSwitcher/bin/KeyboardLayoutSwitcher"
let g:kls_focusSwitching=0

"Syntastic settings
let g:syntastic_python_checker_args='--ignore=E501'
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_pyflakes_args='--ignore=E501'
let g:syntastic_python_pylint_args='--ignore=E501'
let g:syntastic_python_python_args=''


" NerdTree

let NERDTreeRespectWildIgnore=1


" gits plugin
let g:gist_clip_command = 'xclip -selection clipboard'



" python-mode settings
let g:pymode_utils_whitespaces = 0
let g:pymode_breakpoint = 0
let g:pymode_folding = 0


"ROPE settings

let ropevim_vim_completion=0
let ropevim_extended_complete=0
map <C-c>i :call RopeAutoImport()<CR>
map <C-c>o :call RopeOrganizeImports()<CR>


"UltiSnips settings
let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/e-max/.vim/mysnippets/"]

if !has("gui_running")
	"это решение проблемы с неработающим в консоли Ctrl-Tab.  Я перемапил его в
	"~/.Xresourses и сюда забил это новое значение
	let g:UltiSnipsListSnippets = "{"
endif


"vim-xkbswitch settings
let g:XkbSwitchEnabled = 1

"necoghc settings 
let g:necoghc_enable_detailed_browse = 1

"vim-jedi
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 0

" go support
"
"

let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_bin_path = "/home/e-max/workspace/go/bin/"



"  vim-markdown
let g:vim_markdown_folding_disabled = 1


"fzf

let g:fzf_tags_command = 'ctags -R --languages=+Go'





" TAGBAR

" go support for tagbar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }





" support for RestructuredText
let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : '/home/e-max/.vim/bin/rst2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }




"" Support for rust 

let g:racer_cmd="/home/e-max/.cargo/bin/racer"
let g:racer_experimental_completer = 1
"au FileType rust nmap gd <Plug>(rust-def)
"au FileType rust nmap gs <Plug>(rust-def-split)
"au FileType rust nmap gx <Plug>(rust-def-vertical)
"au FileType rust nmap <leader>gd <Plug>(rust-doc)

let g:rustfmt_autosave = 1

let g:deoplete#sources#rust#racer_binary='/home/e-max/.cargo/bin/racer'

let g:deoplete#sources#rust#rust_source_path='/home/e-max/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/'

"echo g:deoplete#sources#rust#rust_source_path



"" git gutter
set updatetime=250 "" how often git gutter checks for updates


"" LanguageClient

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }
