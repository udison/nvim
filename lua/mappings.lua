require "nvchad.mappings"
local nvim_tree_api = require "nvim-tree.api"
--
-- add yours here
vim.keymap.set({'n', 'i', 'v'}, '\\', nvim_tree_api.tree.toggle)
vim.keymap.set('i', '<C-cr>', "<esc> o")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
