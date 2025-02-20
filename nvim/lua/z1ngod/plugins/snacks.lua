return {
  "folke/snacks.nvim",
  priority = 1000,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  ---@diagnostic disable-next-line: undefined-doc-name
  ---@type snacks.Config
  opts = {
    lazygit = {
      win = {
        width = 0,
        height = 0,
      },
    },
    indent = { enabled = true },
    input = { enabled = true, expand = false },
    picker = {
      enabled = true,
      ui_select = true,
      win = {
        input = {
          keys = {
            ["<C-w>"] = "close",
          },
        },
      },
      layouts = {
        ivy = {
          layout = {
            position = "bottom",
            height = 0.5,
          },
        },
        ivy_split = {
          layout = {
            height = 0.5,
          },
        },
      },
    },
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

  -- stylua: ignore start
  keys = {
    { "<leader>ff", function() Snacks.picker.files({ layout = "ivy" }) end, desc = "Smart Find Files" },
    { "<leader>fb", function() Snacks.picker.buffers({ layout = "select" }) end, desc = "Buffers" },
    { "<leader>fs", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>fl", function() Snacks.picker.lines({ layout = "ivy_split" }) end, desc = "Buffer Lines" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Help Pages"},
    { "<leader>fk", function() Snacks.picker.keymaps() end, desc = "Keymaps"},
    { "<leader>lg", function() Snacks.lazygit() end, desc = "LazyGit", },
  },
  -- stylua: ignore end
}
