return {
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

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      renderer = {
        icons = {
          show = {
            git = true,
          }
        }
      },
      git = {
        enable = true,
        ignore = true,
        timeout = 400,
        show_on_dirs = true,
      },
      ignore_ft_on_setup = { "alpha", },
      view = {
        hide_root_folder = false,
        side = 'right',
        mappings = {
          list = { key = "u", action = "dir_up" },
        },
      },
      diagnostics = { enable = true, },
      filters = {
        dotfiles = true,
        exclude = {},
      },
    }
  },

  -- install additional plugins
  ["tpope/vim-fugitive"] = {}, -- Git integration
  ["tpope/vim-surround"] = {}, -- easy surround
  ["folke/todo-comments.nvim"] = {},
  ["hoschi/yode-nvim"] = {},
  ["vimwiki/vimwiki"]= {},
  ["Pocco81/TrueZen.nvim"] = {},
  -- Override plugin definition options
  ["numToStr/Comment.nvim"] = {
    override_options = {
      ignore = '^$',
    },
  },
  ["folke/which-key.nvim"] = {
    override_options = {
      disable = false,
    }
  },
  ["goolord/alpha-nvim"] = {
    override_options = {
      disable = false,
      cmd = "Alpha",
    }
  },
}
--   -- remove plugin
--   ["neovim/nvim-lspconfig"] = false
