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
	virtual_text = false, -- due to `lsp_lines`
	update_in_insert = true, -- hints while edit
})

-- recommended by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- turn on spell check. I absolutely need this :(
vim.opt_local.spell = true
vim.opt_local.spelllang = { "en_gb" }
