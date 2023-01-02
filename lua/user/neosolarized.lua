local ok, n = pcall(require, 'neosolarized')

if ok then
	n.setup({
		comment_italics = true,
		background_set = false,
	})
else
	print('neosolarized not found')
end
