--theme.lua

--colorscheme definition
vim.cmd("colorscheme citruszest")

--Restore Transparency
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')


-- '~' as filler characters when no lines remain
vim.cmd('hi EndOfBuffer guifg=grey ctermfg=grey')
