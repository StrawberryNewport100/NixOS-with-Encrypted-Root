-- settings.lua

vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
-- autocomment
vim.cmd([[autocmd FileType * set formatoptions-=ro]])


-- linewrapping
vim.cmd('set wrap')

--disable highlighting in search
vim.cmd('autocmd CmdlineEnter /,? :set hlsearch')
vim.cmd('autocmd CmdlineLeave /,? :set nohlsearch')

-- Enable incremental search
vim.o.incsearch = true


--disable highlightbar
vim.opt.signcolumn = 'no'


--stop making swap files use undo tree instead
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
