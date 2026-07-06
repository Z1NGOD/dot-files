require("mason").setup({
  ui = {
    border = "rounded",
    icons = {
      package_installed = "+",
      package_pending = ">",
      package_uninstalled = "-",
    },
  },
})

require("mason-tool-installer").setup({
  ensure_installed = {
    "css-lsp",
    "html-lsp",
    "lua-language-server",
    "prettierd",
    "prisma-language-server",
    "stylua",
    "tailwindcss-language-server",
    "vtsls",
  },
})
