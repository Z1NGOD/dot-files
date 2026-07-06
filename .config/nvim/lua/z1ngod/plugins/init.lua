local gh = function(repo)
  return "https://github.com/" .. repo
end

vim.pack.add({
  { src = gh("catppuccin/nvim"), name = "catppuccin", version = "426dbebe06b5c69fd846ceb17b42e12f890aedf1" },
  { src = gh("folke/which-key.nvim"), version = "3aab2147e74890957785941f0c1ad87d0a44c15a" },
  { src = gh("folke/snacks.nvim"), version = "ad9ede6a9cddf16cedbd31b8932d6dcdee9b716e" },
  { src = gh("nvim-tree/nvim-web-devicons"), version = "1fb58cca9aebbc4fd32b086cb413548ce132c127" },
  { src = gh("nvim-tree/nvim-tree.lua"), name = "nvim-tree.lua", version = "1c733e8c1957dc67f47580fe9c458a13b5612d5b" },
  { src = gh("rmagatti/auto-session"), version = "00334ee24b9a05001ad50221c8daffbeedaa0842" },
  { src = gh("saghen/blink.cmp"), name = "blink.cmp", version = "78336bc89ee5365633bcf754d93df01678b5c08f" },
  { src = gh("rafamadriz/friendly-snippets"), version = "6cd7280adead7f586db6fccbd15d2cac7e2188b9" },
  { src = gh("mason-org/mason.nvim"), version = "8e921c2b68571e978db5d4d3fef9c9a7f8755473" },
  { src = gh("WhoIsSethDaniel/mason-tool-installer.nvim"), version = "443f1ef8b5e6bf47045cb2217b6f748a223cf7dc" },
  { src = gh("nvim-treesitter/nvim-treesitter"), version = "4916d6592ede8c07973490d9322f187e07dfefac" },
  { src = gh("windwp/nvim-ts-autotag"), version = "88c1453db4ba7dd24131086fe51fdf74e587d275" },
  { src = gh("stevearc/conform.nvim"), version = "18aeab3d63d350dcf44d64c462cc489a3412af40" },
  { src = gh("mfussenegger/nvim-lint"), version = "665525810630701b84181e4d9eefd24b49845b29" },
  { src = gh("lewis6991/gitsigns.nvim"), version = "dd3f588bacbeb041be6facf1742e42097f62165d" },
  { src = gh("echasnovski/mini.pairs"), version = "d5a29b6254dad07757832db505ea5aeab9aad43a" },
  { src = gh("echasnovski/mini.surround"), version = "88c52297ed3e69ecf9f8652837888ecc727a28ee" },
}, { confirm = false })

require("z1ngod.plugins.colorschemes.catppuccin")
require("z1ngod.plugins.which-key")
require("z1ngod.plugins.nvim-tree")
require("z1ngod.plugins.auto-session")
require("z1ngod.plugins.snacks")
require("z1ngod.plugins.blink")
require("z1ngod.plugins.mini-pairs")
require("z1ngod.plugins.mini-surround")
require("z1ngod.plugins.auto-tag")
require("z1ngod.plugins.treesitter")
require("z1ngod.plugins.diagnostics")
require("z1ngod.plugins.lsp.lspconfig")
require("z1ngod.plugins.lsp.mason")
require("z1ngod.plugins.formating")
require("z1ngod.plugins.linting")
require("z1ngod.plugins.gitsigns")
