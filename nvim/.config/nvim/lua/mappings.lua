require "nvchad.mappings"
-- vim.opt.swapfile = false
vim.opt.swapfile = true

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

-- comment
map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>")
