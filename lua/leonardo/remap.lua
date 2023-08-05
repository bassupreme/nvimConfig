require("leonardo.fn")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ":w<enter>")
vim.keymap.set("n", "<leader>q", ":q<enter>")

-- make commandos
vim.keymap.set("n", "mc", function()
	Compile()
end)
