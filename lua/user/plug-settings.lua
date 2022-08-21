local Plug = vim.fn['plug#']


vim.call('plug#begin')

Plug 'https://github.com/vim-airline/vim-airline.git' -- Airline
Plug 'https://github.com/navarasu/onedark.nvim.git' -- One dark theme 
Plug 'https://github.com/doums/darcula.git' -- Dracula theme
Plug 'kyazdani42/nvim-web-devicons' -- Adds additional icons
Plug 'kyazdani42/nvim-tree.lua' --Tree

vim.call('plug#end')
