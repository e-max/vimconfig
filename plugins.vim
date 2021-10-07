
" NerdTree

let NERDTreeRespectWildIgnore=1


" Fugitive
set diffopt+=vertical


" gits plugin
let g:gist_clip_command = 'xclip -selection clipboard'



"UltiSnips settings 
let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/e-max/.vim/mysnippets/"]
 



"  vim-markdown
let g:vim_markdown_folding_disabled = 1



"" Support for rust 

if has('nvim')
    let g:vim_fakeclip_tmux_plus=1
end

let g:syntastic_rust_checkers = []

let g:rustfmt_autosave = 1


lua << EOF
 require('gitsigns').setup()
EOF



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     tree-sitter and friends                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
  },

  textobjects = {
    select = {
      enable = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",

      },
    },
  },
}
EOF




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                lspkind-vim                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua << EOF
require('lspkind').init({
    -- with_text = true,
    -- symbol_map = {
    --   Text = '',
    --   Method = 'ƒ',
    --   Function = '',
    --   Constructor = '',
    --   Variable = '',
    --   Class = '',
    --   Interface = 'ﰮ',
    --   Module = '',
    --   Property = '',
    --   Unit = '',
    --   Value = '',
    --   Enum = '了',
    --   Keyword = '',
    --   Snippet = '﬌',
    --   Color = '',
    --   File = '',
    --   Folder = '',
    --   EnumMember = '',
    --   Constant = '',
    --   Struct = ''
    -- },
})

EOF

"highlight LspDiagnosticsDefaultError  gui=italic
"highlight LspDiagnosticsDefaultWarning  gui=italic
"highlight LspDiagnosticsDefaultInformation  gui=italic
"highlight LspDiagnosticsDefaultHint  gui=italic


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                lsp-troubles                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF



lua << EOF
require'nvim-web-devicons'.setup {
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
EOF

source ~/.vim/telescope.vim

nmap <space>d :LspTroubleToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                felinei                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


lua << EOF
require('statusline')
EOF


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              nvim-tree                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <space>t :NvimTreeToggle<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  lsp-saga                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {

-- use_saga_diagnostic_sign = true
error_sign = '',
warn_sign = '',
hint_sign = '',
infor_sign = '',
-- dianostic_header_icon = '   ',
-- code_action_icon = ' ',
code_action_prompt = {
  enable = false,
  sign = true,
  sign_priority = 20,
  virtual_text = true,
},
-- finder_definition_icon = '  ',
-- finder_reference_icon = '  ',
-- max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
-- finder_action_keys = {
--   open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
-- },
-- code_action_keys = {
--   quit = 'q',exec = '<CR>'
-- },
-- rename_action_keys = {
--   quit = '<C-c>',exec = '<CR>'  -- quit can be a table
-- },
-- definition_preview_icon = '  '
-- "single" "double" "round" "plus"
-- border_style = "single"
-- rename_prompt_prefix = '➤',
-- if you don't use nvim-lspconfig you must pass your server name and
-- the related filetypes into this table
-- like server_filetype_map = {metals = {'sbt', 'scala'}}
-- server_filetype_map = {}

}
EOF


lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        -- For `ultisnips` user.
        vim.fn["UltiSnips#Anon"](args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
      { name = 'nvim_lsp' },

      -- For ultisnips user.
      { name = 'ultisnips' },

      { name = 'buffer' },
    }
  })

EOF
