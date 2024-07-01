return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      defalut_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        natural_order = true,
        is_hidden_file = function(name, bufnr)
          return vim.startswith(name, ".")
        end,
      },
      win_options = {
        wrap = true,
      },
    })
  end,
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
}
