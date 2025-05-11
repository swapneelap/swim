return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = { "williamboman/mason.nvim" },
	config = function()
		require("mason-lspconfig").setup()
		vim.lsp.config.pylsp = {
			settings = {
				pylsp = {
					plugins = {
						pycodestyle = { enable = false },
						pyflakes = { enabled = false },
						mccabe = { enabled = false },
						flake8 = { enabled = false },
						pylint = { enable = false },
					},
				},
			},
		}
		-- require("mason-lspconfig").setup_handlers({
		-- 	function(server_name)
		-- 		require("lspconfig")[server_name].setup({})
		-- 	end,
		-- 	["pylsp"] = function()
		-- 		local lspconfig = require("lspconfig")
		-- 		lspconfig.pylsp.setup({
		-- 			settings = {
		-- 				pylsp = {
		-- 					plugins = {
		-- 						pycodestyle = { enabled = false },
		-- 						pyflakes = { enabled = false },
		-- 						mccabe = { enabled = false },
		-- 						flake8 = { enabled = false },
		--
		-- 						-- optional linters
		-- 						pylint = { enabled = false },
		-- 					},
		-- 				},
		-- 			},
		-- 		})
		-- 	end,
		-- })
	end,
}
