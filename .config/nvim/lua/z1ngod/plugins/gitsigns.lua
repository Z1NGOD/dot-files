return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      on_attach = function(bufnr)
        local gitsigns = require("gitsigns")

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Actions
        map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "stage_hunk" })
        map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "reset_hunk" })

        map("v", "<leader>hs", function()
          gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, { desc = "stage_hunk" })

        map("v", "<leader>hr", function()
          gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, { desc = "reset_hunk" })

        map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "stage_buffer" })
        map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "reset_buffer" })
        map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "preview_hunk" })
        map("n", "<leader>hi", gitsigns.preview_hunk_inline, { desc = "preview_hunk_inline" })

        map("n", "<leader>hb", function()
          gitsigns.blame_line({ full = true })
        end, { desc = "blame_line" })

        -- Toggles
        map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "toggle_current_line_blame" })
        map("n", "<leader>tw", gitsigns.toggle_word_diff, { desc = "toggle_word_diff" })
      end,
    })
  end,
}
