return {
	-- the colorscheme should be available when starting Neovim
	"neanias/everforest-nvim",
	version = false,
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("everforest").setup({
			background = "medium",
			italics = true,
		})
		-- load the colorscheme here
		vim.cmd.colorscheme("everforest")

		-- the only way to add background to the illuminated word
		-- if the colorscheme does not support it.
		local bg = "#3D484D"

		-- list all of the illuminate groups to tweak:
		local groups = {
			-- "IlluminatedCurWord",  -- the word under the cursor
			"IlluminatedWordText", -- @text objects
			"IlluminatedWordRead", -- read-references
			"IlluminatedWordWrite", -- write-references
		}

		-- apply the same bg to each group:
		for _, g in ipairs(groups) do
			vim.api.nvim_set_hl(0, g, { bg = bg })
		end

		-- Fix: otherwise great, background sucks for Gitsigns hunks
		local delete_in_line = "#E67E80"
		local add_in_line = "#A7C080"
		local text_color = "#232A2E"

		vim.api.nvim_set_hl(0, "GitSignsDeleteInline", { fg = text_color, bg = delete_in_line })
		vim.api.nvim_set_hl(0, "GitSignsAddInline", { fg = text_color, bg = add_in_line })
	end,
}
