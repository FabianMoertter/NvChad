-- custom mappings
local M = {}
local opts = { noremap = true, silent = true }

M.mappings = {
  vim.api.nvim_set_keymap('n', '<leader>d', '"_d', opts ), -- delete text without yanking
  vim.api.nvim_set_keymap('i', 'jj', '<ESC>', opts ), -- jj to quickly exit insert mode
}

return M
