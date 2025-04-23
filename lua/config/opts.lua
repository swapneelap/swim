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

-- activate true colour support
vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.diagnostic.config({
	float = {
		scope = "line",
		border = { "╔", "═", "╗", "║", "╝", "═", "╚", "║" },
	},
})
