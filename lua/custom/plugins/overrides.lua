local M = {}

-- M.treesitter = {}

-- M.mason = {}

-- M.alpha = {}

M.nvimtree = {
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

return M
