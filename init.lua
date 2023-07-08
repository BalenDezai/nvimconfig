-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


require "user.pluginconfigs.options"
require "user.pluginconfigs.keymaps"
require "user.plugins"
require "user.pluginconfigs.colorscheme"
require "user.pluginconfigs.cmp"
require "user.lsp"
require "user.pluginconfigs.treesitter"
require "user.pluginconfigs.comment"
require "user.pluginconfigs.gitsigns"
require "user.pluginconfigs.nvim-tree"
require "user.pluginconfigs.bufferline"
require "user.pluginconfigs.statusline"
require "user.pluginconfigs.telescope"
require "user.pluginconfigs.shade"
require "user.pluginconfigs.autopairs"
