local ok_status, bufferline = pcall(require, 'bufferline')
if not ok_status then
	print "bufferline not found"
	return
end

bufferline.setup{
	options = {
		diagnostic = 'nvim_lsp',
    offsets = {
        {
            filetype = "NvimTree",
            text = "DarkXplorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
    }
	}
}

