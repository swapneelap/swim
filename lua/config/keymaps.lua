-- Please do not hate me for this _/\_
vim.keymap.set("n", "<A-DOWN>", ":m .+1<CR>==") -- move line down(n)
vim.keymap.set("n", "<A-UP>", ":m .-2<CR>==") -- move line up(n)
vim.keymap.set("v", "<A-DOWN>", ":m '>+1<CR>gv=gv") -- move line down(v)
vim.keymap.set("v", "<A-UP>", ":m '<-2<CR>gv=gv") -- move line up(v)
