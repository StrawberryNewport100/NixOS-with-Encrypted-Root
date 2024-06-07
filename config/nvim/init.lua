-- init.lua -- 

--require the modules 
require('settings')
require('keybinds')
require('plugin.packer')
require('plugin.treesitter')
require('plugin.lsp')
require('plugin.telescope')
require('plugin.indent-blankline')
require('terminal')
require('theme')
--Let me know i've sourced this file
vim.cmd('echo "Welcome!"')
