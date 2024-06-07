-- treesitter-config.lua
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"javascript", "typescript", "html", "css", "json", "lua", },
    highlight = {
        enable = true,
    },
      auto_install = true,
}

