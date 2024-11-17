return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },
      hover = {
        silent = true,
      },
      routes = {
        {
          filter = {
            event = "notify",
            find = "No information available",
          },
          opts = { skip = true },
        },

        {
          filter = {
            event = "msg_show",
            find = "written",
          },
          opts = { skip = true },
        },

        -- {
        --   filter = {
        --     any = "NvimTree",
        --   },
        --   opts = { skip = true },
        -- },

        {
          filter = {
            event = "msg_show",
            find = "записаний",
          },
          opts = { skip = true },
        },
      },
    })
  end,
}
