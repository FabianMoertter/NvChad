local overrides = require "custom.plugins.overrides"

return {
  -- run :MasonInstallAll
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "lua-language-server", -- lua
        "stylua", -- lua
        "pyright", -- python
        "html-lsp", -- html
        "css-lsp", -- css
        "black", -- python formatting
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

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- install additional plugins
  ["tpope/vim-fugitive"] = {}, -- Git integration
  ["tpope/vim-surround"] = {}, -- easy surround
  ["folke/todo-comments.nvim"] = {},
  ["hoschi/yode-nvim"] = {},
  ["vimwiki/vimwiki"] = {},
  ["LukeGoodsell/nextflow-vim"] = {},
  ["Pocco81/TrueZen.nvim"] = {},
  -- Override plugin definition options
  ["numToStr/Comment.nvim"] = {
    override_options = {
      ignore = "^$",
    },
  },
  ["folke/which-key.nvim"] = {
    disable = false,
    override_options = {},
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = {
      cmd = "Alpha",
    },
  },
}
--   -- remove plugin
--   ["neovim/nvim-lspconfig"] = false
