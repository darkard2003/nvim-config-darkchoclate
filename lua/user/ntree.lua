local ok_status, ntree = pcall(require, 'nvim-tree')
if not ok_status then
	print "nvim-tree not found"
	return
end

ntree.setup({ sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" }
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
