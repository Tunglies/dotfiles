require "nvchad.mappings"

-- add yours here

vim.opt.swapfile = false

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local opts = { noremap = true, silent = true }
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- files
map("n", "QQ", "<cmd>q!<CR>")
map("n", "WQ", "<cmd>wq!<CR>")
map("n", "WW", "<cmd>w<CR>")

map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })
--
map("n", "b", "<cmd>SidebarNvimToggle<CR>", opts)
