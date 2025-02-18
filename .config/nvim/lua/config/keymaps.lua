-- pane navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- tmux navigation
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>")

-- Select all
vim.keymap.set("v", "<C-A>", "gg<S-v>G")

-- Split window
vim.keymap.set("n", "ss", ":split<CR> :wincmd j<CR>", opts)
vim.keymap.set("n", "sv", ":vsplit<CR> :wincmd l<CR>", opts)

-- Change behaviour of <c-d> and <c-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep Cursor in place for "J"
vim.keymap.set("n", "J", "mzJ`z")

-- Add yank to system buffer
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Advanced word replace
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Create source keymaps
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":.lua<CR>")

-- Format key
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts)

-- File tree
vim.keymap.set("n", "<leader>i", function()
	if vim.bo.filetype == "oil" then
		require("oil").close()
	else
		require("oil").open_float(nil, { preview = { horizontal = true } })
	end
end)

vim.keymap.set("n", "<leader>e", function()
	local cwd = vim.uv.cwd()
	if vim.bo.filetype == "oil" then
		require("oil").close()
	else
		require("oil").open_float(cwd, { preview = { horizontal = true } })
	end
end)

-- Messages
vim.keymap.set("n", "<leader>fn", "<cmd>Noice telescope<CR>")
vim.keymap.set("n", "<leader>nx", "<cmd>Noice dismiss<CR>")

-- git
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk_inline<CR>")

-- LSP
vim.keymap.set("n", "<leader>gk", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "<leader>gr", require("telescope.builtin").lsp_references, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Telescope
vim.keymap.set("n", "<C-o>", require("telescope.builtin").find_files, opts)
vim.keymap.set("n", "<C-p>", require("telescope.builtin").live_grep, opts)
vim.keymap.set("n", "<C-b>", require("telescope.builtin").buffers, opts)
vim.keymap.set("n", "<leader>fk", require("telescope.builtin").keymaps, opts)
vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, opts)
vim.keymap.set("n", "<leader>fm", require("telescope.builtin").man_pages, opts)
vim.keymap.set("n", "<leader>en", function()
	require("telescope.builtin").find_files({
		cwd = "~/dotfiles/.config/nvim/",
	})
end)

-- Debugger
vim.keymap.set("n", "<leader>dt", require("dap").toggle_breakpoint, {})
vim.keymap.set("n", "<leader>dc", require("dap").continue, {})
vim.keymap.set("n", "<leader>do", require("dap").step_over, {})
vim.keymap.set("n", "<leader>di", require("dap").step_into, {})
vim.keymap.set("n", "<leader>dx", require("dap").step_out, {})

-- Harpoon
vim.keymap.set("n", "<leader>ha", function()
	require("harpoon"):list():add()
end)
vim.keymap.set("n", "<leader>hl", function()
	require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
end)
vim.keymap.set("n", "<leader>h1", function()
	require("harpoon"):list():select(1)
end)
vim.keymap.set("n", "<leader>h2", function()
	require("harpoon"):list():select(2)
end)
vim.keymap.set("n", "<leader>h3", function()
	require("harpoon"):list():select(3)
end)
vim.keymap.set("n", "<leader>h4", function()
	require("harpoon"):list():select(4)
end)

-- buffalo
vim.keymap.set("n", "<leader><leader>", require("buffalo.ui").toggle_buf_menu)
