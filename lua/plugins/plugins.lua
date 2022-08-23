local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})


return require('packer').startup(function(use)
	
	-- Packer manage itself
	use 'wbthomason/packer.nvim'

	-- Themes
	use 'navarasu/onedark.nvim'	
	use 'shapeoflambda/dark-purple.vim'
	use 'Rigellute/shades-of-purple.vim'

	-- Useing lua cmp config
	use 'hrsh7th/cmp-nvim-lua'

	-- Devicons 
	use 'kyazdani42/nvim-web-devicons'

	-- Nvim tree plugin
	use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)

}
	
	-- vim-cmp config
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use "rafamadriz/friendly-snippets"
	
	-- lsp server config
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	
	-- Vim PIO
	use 'normen/vim-pio'

	-- Some common dependency (currently required for telescope)
	use 'nvim-lua/plenary.nvim'
	use 'BurntSushi/ripgrep'

	-- Nvim telescope
	use 'nvim-telescope/telescope.nvim'	

	-- Treesitter 
	use 'nvim-treesitter/nvim-treesitter'

	-- Autopairs 
	use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
	
	-- Lualine
	use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

	use "akinsho/flutter-tools.nvim"

end)
