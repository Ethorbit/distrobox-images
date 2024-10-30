local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/autoload/plugged")

Plug("airblade/vim-rooter")
Plug("nvim-lualine/lualine.nvim")
Plug("kyazdani42/nvim-web-devicons")
Plug("francoiscabrol/ranger.vim")
Plug("rbgrouleff/bclose.vim")

Plug("L3MON4D3/LuaSnip")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-cmdline")
Plug("hrsh7th/nvim-cmp")
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")

-- LSP stuff
Plug("neovim/nvim-lspconfig")
Plug("mfussenegger/nvim-lint")
Plug("mhartington/formatter.nvim")
-- PHP
Plug("nvim-lua/plenary.nvim")

Plug("peterhoeg/vim-qml")

Plug("lukas-reineke/indent-blankline.nvim")
Plug("vim-scripts/confirm-quit")

-- Telescope stuff
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim")
Plug("AckslD/nvim-neoclip.lua")

Plug("MunifTanjim/nui.nvim")

vim.call("plug#end")
