local options = {
	number = true,
	tabstop = 4,
	shiftwidth = 4,
	softtabstop = 4,
	smarttab = true,
	termguicolors = true,
	autoindent = true,
	mouse = 'a',
}

for k, v in pairs(options)
	do
		vim.opt[k] = v
	end


