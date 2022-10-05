local ok_status, ntree = pcall(require, 'nvim-tree')
if not ok_status then
	print "nvim-tree not found"
	return
end

ntree.setup({ sort_by = "case_sensitive",
	disable_netrw = true,
	hijack_netrw = true,
	view = {
		adaptive_size = true,
		mappings = {
		list = {
			{ key = "u", action = "dir_up" },
			{key = "v", action = "vsplit" },
			{key = "h", action = "close_node"}
	      },
		},
	  },
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
	diagnostics  = {
		enable = true,
	},
})
