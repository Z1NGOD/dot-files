require("catppuccin").setup({
  flavour = "frappe",
  transparent_background = true,
  term_colors = true,
  integrations = {
    gitsigns = true,
    mason = true,
    mini = { enabled = true },
    native_lsp = { enabled = true },
    nvimtree = true,
    snacks = true,
    treesitter = true,
    which_key = true,
    blink_cmp = true,
  },
})

vim.cmd.colorscheme("catppuccin")
