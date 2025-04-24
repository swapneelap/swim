return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		spec = {
			{ "<leader>l", "<cmd>Lazy<cr>", desc = "Open lazy nvim window", mode = "n" },
			{ "<leader>ti", "<cmd>InspectTree<cr>", desc = "Inspect the AST by treesitter", mode = "n" },
			{ "<leader>dd", "<cmd>lua require('lsp_lines').toggle()<cr>", desc = "Display diagnostics", mode = "n" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
