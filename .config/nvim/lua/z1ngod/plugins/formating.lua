require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    svelte = { "prettierd" },
    css = { "prettierd" },
    html = { "prettierd" },
    json = { "prettierd" },
    yaml = { "prettierd" },
    markdown = { "prettierd" },
    graphql = { "prettierd" },
    lua = { "stylua" },
  },
  format_on_save = {
    lsp_format = "fallback",
    async = false,
    timeout_ms = 10000,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
  require("conform").format({
    lsp_format = "fallback",
    async = false,
    timeout_ms = 10000,
  })
end, { desc = "Format file or range" })
