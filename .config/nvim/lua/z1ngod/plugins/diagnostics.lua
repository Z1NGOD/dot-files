vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "E ",
      [vim.diagnostic.severity.WARN] = "W ",
      [vim.diagnostic.severity.HINT] = "H ",
      [vim.diagnostic.severity.INFO] = "I ",
    },
  },
  virtual_text = true,
})
