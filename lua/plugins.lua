-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`

vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Colorscheme
	use({ "navarasu/onedark.nvim", config = "require('theme/theme')" })
	use("LunarVim/Colorschemes")
	use("dylanaraps/wal.vim")

	-- Dashboard
	use({ "glepnir/dashboard-nvim", config = "require('starting.dashboardl')" })
	-- WhichKey
	use({ "folke/which-key.nvim", config = "require('whichkeyl')" })

	-- BarBar
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" }
	})
	-- Utils
	-- AutoPairs
	use("jiangmiao/auto-pairs")
	-- VimMove
	use("matze/vim-move")
	-- Hop
	use({ "phaazon/hop.nvim", config = "require('utils.hopl')" })
	-- NerdTree
	use("preservim/nerdtree")
	-- TagBar
	use({
		"preservim/tagbar",
		keys = { "n", "<C-b>" },
		config = "require('tagbarl')",
	})
	-- ToggleTerm
	use({ "akinsho/toggleterm.nvim", keys = { "n", "<Leader>t" }, config = "require('toggleterml')" })
	-- Icons
	use("ryanoasis/vim-devicons")
	-- Finders
	use({
		"junegunn/fzf.vim",
		keys = { "n", "<Leader>of" },
		config = "require('utils/fzfl')",
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Comment
	use({ "terrortylor/nvim-comment", event = "BufWinEnter", config = "require('utils.commentslua')" })

	-- Syntax Highlighting
	use({ "nvim-treesitter/nvim-treesitter", event = "BufWinEnter", config = "require('theme/syntaxhigh')" })
	-- Formatter
	use({ "jose-elias-alvarez/null-ls.nvim", config = "require('formatter/nullsl')" })

	-- LSP
	-- LspConfig
	use("neovim/nvim-lspconfig")

	-- LspSaga
	use({ "tami5/lspsaga.nvim", config = "require('lsp/lspsagal')" })

	-- AutoCompletion
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	-- VSnip
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/vim-vsnip-integ")

	-- JavaLsp
	use("mfussenegger/nvim-jdtls")

	-- Trouble
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = "require('lsp/troublel')",
	})

	-- Discord Presence
	use({ "andweeb/presence.nvim", config = "require('discord.discord')" })

	-- StatusLine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		event = "BufWinEnter",
		config = "require('theme/statuslinel')",
	})
end)
