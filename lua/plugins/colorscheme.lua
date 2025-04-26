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
			on_highlights = function(hl, palette)
				hl.IlluminatedWordText = { bg = palette.bg2, bold = true }
				hl.IlluminatedWordRead = { bg = palette.bg2, bold = true }
				hl.IlluminatedWordWrite = { bg = palette.bg2, bold = true }
				hl.GitSignsDeleteInline = { fg = palette.bg_dim, bg = palette.red, bold = true }
				hl.GitSignsAddInline = { fg = palette.bg_dim, bg = palette.green, bold = true }
			end,
		})
		-- load the colorscheme here
		vim.cmd.colorscheme("everforest")
	end,
}
