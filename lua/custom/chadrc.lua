local M = {}

M.ui = {
  transparency = true,
}

local userPlugins = require "custom.plugins" -- path to table

M.plugins = {
  -- user = userPlugins,
  -- install = userPlugins,

  ["neovim/lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
}

-- custom options
M.options = {
  relativenumber = true,
  clipboard = "unnamedplus",
  ruler = true,
}

-- custom mappings
local opts = { noremap = true, silent = true }
M.mappings = {
  vim.api.nvim_set_keymap('n', '<leader>d', '"_d', opts ), -- delete text without yanking
  vim.api.nvim_set_keymap('i', 'jj', '<ESC>', opts ), -- jj to quickly exit insert mode
}

return M
