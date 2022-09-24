local M = {}

M.options = {
    update_url = "https://github.com/FabianMoertter/NvChad",
}

M.ui = {
  transparency = true,
}

M.plugins = require "custom.plugins"

M.mappings = require "custom.mappings"

return M
