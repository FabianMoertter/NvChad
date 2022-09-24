local opt = vim.opt
-- local config = require("core.utils").load_config()

opt.relativenumber = true
opt.clipboard = "unnamedplus"
opt.ruler = false

vim.cmd 'autocmd! TextYankPost * lua vim.highlight.on_yank { on_visual = false }'
