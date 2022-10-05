local options = {
	number = true,
	tabstop = 2,
	shiftwidth = 2,
	softtabstop = 2,
	smarttab = true,
	termguicolors = true,
	autoindent = true,
	mouse = 'a',
	splitbelow = true,
	splitright = true,
	shell = 'powershell.exe -nologo',
}

for k, v in pairs(options)
	do
		vim.opt[k] = v
	end




