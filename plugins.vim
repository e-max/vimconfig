
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



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              nvim-tree                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <space>t :NvimTreeToggle<CR>

lua <<EOF
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
EOF



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  nvim-cmp                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





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
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
    },
    sources = {
      { name = 'nvim_lsp' },

      -- For ultisnips user.
      { name = 'ultisnips' },

      { name = 'buffer' },
    }
  })

EOF


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  nvim-hop                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF

require'hop'.setup()
vim.api.nvim_set_keymap('n', '<space>/', "<cmd>lua require'hop'.hint_patterns()<cr>", {})
vim.api.nvim_set_keymap('l', '<tab>', "<cr><cmd>lua require'hop'.hint_patterns({}, vim.fn['getreg']('/'))<cr>", {})

EOF

