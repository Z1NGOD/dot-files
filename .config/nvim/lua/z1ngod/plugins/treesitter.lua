return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      sync_install = false,
      ensure_installed = {},
      ignore_install = {},
      modules = {},
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      auto_install = true,
    })
  end,
}
