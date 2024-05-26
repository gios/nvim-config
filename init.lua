require 'options'
require 'keymaps'
require 'autocommands'
local plugins = require 'plugins'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

local opts = {
  ui = {
    icons = {},
  },
}

require('lazy').setup(plugins, opts)

-- vim: ts=2 sts=2 sw=2 et
