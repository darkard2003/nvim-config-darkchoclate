local ok_status, bufferline = pcall(require, 'bufferline')
if not ok_status then
	print "bufferline not found"
	return
end

bufferline.setup{
	options = {
		diagnostic = 'nvim_lsp',
	}
}

