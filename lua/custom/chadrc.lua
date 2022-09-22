local M = {}

M.ui = {}

M.plugins = {
  ["neovim/lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
}

M.options = {
  relativenumber = true,
  clipboard = "unnamedplus",
  ruler = true,
}

return M
