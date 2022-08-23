local ok_status, autopairs = pcall(require, 'nvim-autopairs')
if not ok_status then
	print 'nvim autopairs not found'
	return
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
