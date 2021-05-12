
lua << EOF

require('telescope').setup{
	defaults = {
		color_devicons = true,
	}
}

local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}
EOF


nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>r <cmd>Telescope live_grep<cr>
nnoremap <space>b <cmd>Telescope buffers<cr>
nnoremap <space>s <cmd>Telescope lsp_workspace_symbols<cr>
