local M = {}

M.ui = {
  transparency = true,
}

M.plugins = {
  -- user = userPlugins,
  -- install = userPlugins,

  -- run :MasonInstallAll
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "lua-language-server", -- lua
        "stylua", -- lua
        "pyright", -- python
        "html-lsp", -- html
        "css-lsp" -- css
      },
    },
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["kyazdani42/nvim-tree.lua"] = {},
  ["tpope/vim-fugitive"] = {}, -- Git integration
  ["tpope/vim-surround"] = {}, -- easy surround
}

M.mappings = require "custom.mappings"

return M
