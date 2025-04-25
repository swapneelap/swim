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
				"<leader>i",
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
			{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "toggle explorer", mode = "n" },
			{ "<leader>t", "<cmd>lua require('betterTerm').open()<cr>", desc = "terminal", mode = "n" },
			{ "<leader>g", desc = "Git", mode = "n" },
			{ "<leader>gh", desc = "Git hunks", mode = "n" },
			{ "<leader>gb", "<cmd>Gitsigns blame_line<cr>", desc = "blame line", mode = "n" },
			{ "<leader>ghh", "<cmd>Gitsigns preview_hunk<cr>", desc = "preview hunk", mode = "n" },
			{ "<leader>ghn", "<cmd>Gitsigns nav_hunk next<cr>", desc = "next hunk", mode = "n" },
			{ "<leader>ghp", "<cmd>Gitsigns nav_hunk prev<cr>", desc = "previous hunk", mode = "n" },
			{ "<leader>ghs", "<cmd>Gitsigns stage_hunk<cr>", desc = "stage hunk", mode = "n" },
			{ "<leader>ghr", "<cmd>Gitsigns reset_hunk<cr>", desc = "reset_hunk", mode = "n" },
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
