return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@module 'Snacks'
  ---@type snacks.Config
  opts = {
    indent = { enabled = true },
    input = { enabled = true, expand = false },
    styles = {
      input = {
        title_pos = "left",
        relative = "cursor",
        row = 0,
        col = 0,
        width = 30,
      },
    },
  },
}
