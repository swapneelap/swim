return {
	"williamboman/mason-lspconfig.nvim",
	version = "1.*",
	dependencies = { "williamboman/mason.nvim" },
	config = function()
		require("mason-lspconfig").setup()
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
			["pylsp"] = function()
				local lspconfig = require("lspconfig")
				lspconfig.pylsp.setup({
					settings = {
						pylsp = {
							plugins = {
								pycodestyle = { enabled = false },
								pyflakes = { enabled = false },
								mccabe = { enabled = false },
								flake8 = { enabled = false },

								-- optional linters
								pylint = { enabled = false },
							},
						},
					},
				})
			end,
		})
	end,
}
