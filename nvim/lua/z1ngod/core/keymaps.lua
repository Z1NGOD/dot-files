vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

keymap.set("n", "<C-a>", "ggVG", { desc = "Selecting everything in current buffer" })

keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Opens Lazy UI" })

keymap.set("n", "<leader>lm", "<cmd>Mason<CR>", { desc = "Opens Mason UI" })

keymap.set("v", "J", ":'<,'>m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move line down" })
keymap.set("v", "K", ":'<,'>m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move line up" })
