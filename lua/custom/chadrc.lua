local M = {}

M.ui = {
  transparency = true,
}

-- local userPlugins = require "custom.plugins" -- path to table

M.plugins = {
  -- user = userPlugins,
  -- install = userPlugins,

  ["neovim/lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
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
  ["kyazdani42/nvim-tree.lua"] = {},
  ["tpope/vim-fugitive"] = {}, -- Git integration
  ["tpope/vim-surround"] = {}, -- easy surround
}

M.mappings = require "custom.mappings"

return M
