return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		spec = {
			{
				"<leader>l",
				"<cmd>Lazy<cr>",
				desc = "open lazy nvim window",
				mode = "n",
			},
			{
				"<leader>ti",
				"<cmd>InspectTree<cr>",
				desc = "inspect the AST by treesitter",
				mode = "n",
			},
			{ "<leader>b", desc = "buffer options", mode = "n" },
			{
				"<leader>bd",
				"<cmd>lua require('lsp_lines').toggle()<cr>",
				desc = "display diagnostics",
				mode = "n",
			},
			{
				"<leader>bf",
				"<cmd>lua require('conform').format()<cr>",
				desc = "format file",
				mode = "n",
			},
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
