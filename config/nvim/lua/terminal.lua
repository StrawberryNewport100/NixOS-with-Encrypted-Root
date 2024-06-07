-- terminal.lua
--this opens the terminal using leader t and also opens it in a window with insert mode already on mimicking vims behavior

-- Open terminal in a vertical split, using leader t 
vim.api.nvim_set_keymap('n', '<Leader>t', '<Cmd>vnew term://bash<CR>', { noremap = true, silent = true })

-- Open terminal in a new tab, using leader T 
vim.api.nvim_set_keymap('n', '<Leader>T', '<Cmd>tabnew term://bash<CR>', { noremap = true, silent = true })

-- Switch between terminal and code windows
vim.api.nvim_set_keymap('t', '<C-w>w', '<C-\\><C-N><C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-w>j', '<C-\\><C-N><C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-w>k', '<C-\\><C-N><C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-w>h', '<C-\\><C-N><C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-w>l', '<C-\\><C-N><C-w>l', { noremap = true, silent = true })

-- Automatically enter insert mode when the terminal is opened
vim.api.nvim_exec([[
  autocmd TermOpen * setlocal nonumber norelativenumber | startinsert
]], false)

--Go back into normal mode using escape in the terminal 
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
