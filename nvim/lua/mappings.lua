require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "navigate left (nvim/tmux)" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "navigate down (nvim/tmux)" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "navigate up (nvim/tmux)" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "navigate right (nvim/tmux)" })

-- splits (move between them with <C-h/j/k/l> above)
map("n", "<leader>|", "<cmd>vsplit<CR>", { desc = "split vertical" })
map("n", "<leader>-", "<cmd>split<CR>", { desc = "split horizontal" })
map("n", "<leader>q", "<cmd>close<CR>", { desc = "split close current" })
map("n", "<leader>o", "<cmd>only<CR>", { desc = "split close all others" })
map("n", "<leader>=", "<C-w>=", { desc = "split equalize sizes" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
