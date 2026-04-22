return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false, -- REQUIRED: The rewrite must be loaded early to register commands
	build = ":TSUpdate",
	config = function()
		local ts = require("nvim-treesitter")

		-- 1. Pre-install your core languages
		ts.install({
			"lua",
			"python",
			"rust",
			"bash",
			"markdown",
		})

		-- 2. Create an autocommand for highlighting
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local bufnr = args.buf
				local ft = vim.bo[bufnr].filetype

				-- Use pcall to ignore errors for filetypes without parsers (like 'noice')
				pcall(vim.treesitter.start, bufnr, ft)
			end,
		})

		-- 3. Enable Indentation (Optional, now manual on main branch)
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
