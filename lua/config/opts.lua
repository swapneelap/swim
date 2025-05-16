vim.opt.number = true
vim.opt.wrap = false

-- merge system clipboard with nvim clipboard
-- so now you should be able to copy-paste between
-- nvim and the system and reverse.
vim.opt.clipboard = "unnamedplus"

-- igonre case in commands
vim.opt.ignorecase = true

-- highlight present line
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- activate true colour support
vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.diagnostic.config({
	virtual_text = false, -- due to `lsp_lines`
	update_in_insert = true, -- hints while edit
})

-- recommended by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- turn on spell check. I absolutely need this :(
vim.opt_local.spell = true
vim.opt_local.spelllang = { "en_gb" }

--------------------------------------------------------------------
---------------------- Auto Commands -------------------------------
--------------------------------------------------------------------

vim.api.nvim_create_autocmd({ "BufReadPost" }, {
	pattern = { "*" },
	callback = function()
		if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
			vim.api.nvim_exec("normal! g'\"", false)
		end
	end,
	desc = "Start the session from where it ended.",
})
