return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
  opts = {},
  config = function()
    require("dressing").setup()
  end,
}
