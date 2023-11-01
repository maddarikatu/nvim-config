local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<F8>', '<Cmd>TagbarToggle<CR>', opts)
