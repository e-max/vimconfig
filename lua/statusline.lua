local components = require('feline.presets.default')

local lsp_status = require('lsp-status');



-- modify file_info component
components.active[1][3].provider = {
	name = "file_info",
	opts = {
		type = 'unique'
	}
}

components.active[1][10] = {
	provider = function () 
		return lsp_status.status_progress()
	end,
	enabled = true,
	hl = { fg = 'grey' },
    left_sep = ' '
}

-- require('feline').setup({components = components})
require('feline').setup()
