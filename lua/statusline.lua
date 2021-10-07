local components = require('feline.presets.default')

local lsp_status = require('lsp-status');


components.active[1][10] = {
	provider = function () 
		return lsp_status.status_progress()
	end,
	enabled = true,
	hl = { fg = 'grey' },
    left_sep = ' '
}

require('feline').setup({components = components})
