-- vim.o, global.
-- vim.wo, window.
-- vim.bo, buffer.

vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2


local keymap = vim.api.nvim_set_keymap
-- ctrl+s to save.
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})

local opts = { noremap: true }

