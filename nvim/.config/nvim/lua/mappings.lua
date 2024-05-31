require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local opts = { noremap = true, silent = true }
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map("n", "q", "<cmd>SidebarNvimToggle<CR>", opts)
