local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Sort for keymap
local km = vim.api.nvim_set_keymap

-- Remap space as leader key
km("n", "<Space>", "<Nop", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)
km("n", "<C-l>", "<C-w>l", opts)

-- Toggle NVimTree
km("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resizing windows
km("n", "<C-Up>", ":resize -2<cr>", opts)
km("n", "<C-Down>", ":resize +2<cr>", opts)
km("n", "<C-Left>", ":vertical resize -2<cr>", opts)
km("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- Navigating buffers
km("n", "<S-l>", ":bnext<CR>", opts)
km("n", "<S-h>", ":bprev <CR>", opts)

-- Remapping tab
km("i", "jk", "<Esc>", opts)

