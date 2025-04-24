return {
	"echasnovski/mini.indentscope",
	version = false,
	config = function()
		require("mini.indentscope").setup({
			symbol = "│", -- obtained from folke's snacks indent
		})
	end,
}
