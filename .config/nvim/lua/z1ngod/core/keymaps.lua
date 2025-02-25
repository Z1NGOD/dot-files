vim.g.mapleader = " "
local keymap = vim.keymap
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
keymap.set("n", "<C-a>", "ggVG", { desc = "Selecting everything in current buffer" })
keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Opens Lazy UI" })
keymap.set("n", "<leader>lm", "<cmd>Mason<CR>", { desc = "Opens Mason UI" })
keymap.set("v", "K", ":'<,'>m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move line up" })
keymap.set("v", "J", ":'<,'>m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move line down" })
keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true, desc = "Move left inside insert mode" })
keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true, desc = "Move right inside insert mode" })
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left split" })
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Move to bottom split" })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Move to top split" })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right split" })
keymap.set(
  "t",
  "<C-h>",
  "<cmd>wincmd h<CR>",
  { noremap = true, silent = true, desc = "Move to left split in terminal" }
)
keymap.set(
  "t",
  "<C-j>",
  "<cmd>wincmd j<CR>",
  { noremap = true, silent = true, desc = "Move to bottom split in terminal" }
)
keymap.set("t", "<C-k>", "<cmd>wincmd k<CR>", { noremap = true, silent = true, desc = "Move to top split in terminal" })
keymap.set(
  "t",
  "<C-l>",
  "<cmd>wincmd l<CR>",
  { noremap = true, silent = true, desc = "Move to right split in terminal" }
)
keymap.set("v", "<C-h>", "<gv", { noremap = true, silent = true, desc = "Move line to left" })
keymap.set("v", "<C-l>", ">gv", { noremap = true, silent = true, desc = "Move line to right" })
keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true, silent = true, desc = "Next buffer" })
keymap.set("n", "<leader>bp", ":bp<CR>", { noremap = true, silent = true, desc = "Previous buffer" })
keymap.set("n", "<leader>bx", ":bd<CR>", { noremap = true, silent = true, desc = "Delete buffer" })
