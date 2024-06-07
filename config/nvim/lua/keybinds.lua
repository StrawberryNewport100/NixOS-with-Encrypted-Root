-- keybinds.lua

--leader is space
vim.g.mapleader = ' '





-- Plugin Specifc -- 

--Leader f to open Telescope
vim.api.nvim_set_keymap('n', '<Leader>f', '<Cmd>Telescope find_files<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>F', '<Cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
--Leader u to toggle undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)




-- Regular Keymaps -- 

--find and replace all instances of current word using leader r 
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--move selection around using J and K in visual 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")




-- This section changes the behavior to yank to system clip using control c 



-- Yank to register '+' (system clipboard) in normal mode with Ctrl+C
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', { noremap = true, silent = true })


-- Yank to register '+' (system clipboard) in visual mode with Ctrl+C
vim.api.nvim_set_keymap('x', '<C-c>', '"+y', { noremap = true, silent = true })


-- Yank to register '+' (system clipboard) in operator pending mode with Ctrl+C
vim.api.nvim_set_keymap('o', '<C-c>', '"+y', { noremap = true, silent = true })
