local components = require('feline.presets.default')

local lsp_status = require('lsp-status');

local fn = vim.fn
local uv = vim.loop
local api = vim.api

local cache = {}

cargo_prefix = '/home/e-max/.cargo/git'

function is_crate(filename) 
	local start = string.find(filename, cargo_prefix, 1, true)
    return start == 1
end

local function readFileSync(path)
  local fd = uv.fs_open(path, "r", 438)
  if not fd then return end
  local stat = assert(uv.fs_fstat(fd))
  local data = assert(uv.fs_read(fd, stat.size, 0))
  assert(uv.fs_close(fd))
  return data
end

function get_crate_name(filename) 
	while string.len(filename) > 1
		do
			local dir = vim.fn["fnamemodify"](filename, ':h')
			local path = string.format("%s/Cargo.toml", dir)
			local body = readFileSync(path)
			if body then 
				local crate = string.match(body, '.*name%s*=%s*"([-_%w]+)"')
				return crate
			else
				filename = dir
			end
			
		end
end


function get_crate()
    local filename = api.nvim_buf_get_name(0)
    if not cache[filename] then
    	local crate = get_crate_name(filename)
    	if crate then 
    		cache[filename] = crate
		else
    		cache[filename] = ''
		end
	end
	return cache[filename]
end


-- modify file_info component
components.active[1][3].provider = {
	name = "file_info",
	opts = {
		type = 'unique'
	}
}

table.insert(components.active[1], 3, {
	provider = function () 
		local crate_name = ''
		local crate = get_crate()
		if crate then
			return ' ' .. crate .. ' '
		end
		
		return ''
	end,
	enabled = true,
	hl = { bg = 'orange', fg = 'black', style = 'bold' },
            
    left_sep = ' '

})

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
