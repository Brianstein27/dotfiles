-- leader key
vim.g.mapleader = " "

-- Copy from clipboard
vim.opt.clipboard = "unnamedplus"

-- set hybrid linenumbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false

-- set conceal level
vim.cmd("set conceallevel=2")

-- better scrolling
vim.o.scrolloff = 8

-- set tab spacing
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual" })
	end,
})

-- diagnostics appearance
vim.diagnostic.config({
	virtual_text = true,
	signs = false,
	underline = true,
	update_in_insert = false,
	severity_sort = false,
})

-- fold
vim.o.foldcolumn = "0"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
