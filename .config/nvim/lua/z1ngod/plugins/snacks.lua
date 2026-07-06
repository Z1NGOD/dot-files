require("snacks").setup({
  indent = { enabled = true },
  input = { enabled = true, expand = false },
  lazygit = {
    win = {
      width = 0,
      height = 0,
    },
  },
  picker = {
    enabled = true,
    ui_select = true,
    win = {
      input = {
        keys = {
          ["<C-w>"] = "close",
          ["<c-d>"] = { "bufdelete", mode = { "n", "i" } },
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
})

vim.keymap.set("n", "<leader>ff", function()
  Snacks.picker.files({ layout = "ivy" })
end, { desc = "Smart Find Files" })
vim.keymap.set("n", "<leader>fb", function()
  Snacks.picker.buffers({ layout = "select" })
end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fs", function()
  Snacks.picker.grep()
end, { desc = "Grep" })
vim.keymap.set("n", "<leader>fl", function()
  Snacks.picker.lines({ layout = "ivy_split" })
end, { desc = "Buffer Lines" })
vim.keymap.set("n", "<leader>fh", function()
  Snacks.picker.help()
end, { desc = "Help Pages" })
vim.keymap.set("n", "<leader>fk", function()
  Snacks.picker.keymaps()
end, { desc = "Keymaps" })
vim.keymap.set("n", "<leader>lg", function()
  Snacks.lazygit()
end, { desc = "LazyGit" })
