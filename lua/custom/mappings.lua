-- custom mappings
local M = {}
local opts = { noremap = true, silent = true }

-- M.general = {
--   n = {
--   },
-- }

M.mappings = {
  vim.api.nvim_set_keymap('n', '<leader>d', '"_d', opts ), -- delete text without yanking
  vim.api.nvim_set_keymap('i', 'jj', '<ESC>', opts ), -- jj to quickly exit insert mode
  -- vim.api.nvim_set_keymap('n', 'S', ':%s//g<Left><Left', opts), -- replace all with S
  -- vim.api.nvim_set_keymap('n', 'Q', '<Nop>', opts),
}

return M
