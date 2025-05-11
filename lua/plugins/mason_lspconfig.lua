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
		-- NOTE: disable hover from ruff
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if client == nil then
					return
				end
				if client.name == "ruff" then
					client.server_capabilities.hoverProvider = false
				end
			end,
			desc = "LSP: Disable hover capability from Ruff",
		})
	end,
}
