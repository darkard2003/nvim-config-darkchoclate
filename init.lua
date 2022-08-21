require "user.options"
require "user.keymap" 
require "plugins.plugins"
require "user.onedark-setup"
require "user.cmp"
require "user.lsp"

require("nvim-tree").setup({
  sort_by = "case_sensitive",
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

