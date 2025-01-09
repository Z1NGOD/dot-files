return {
  "L3MON4D3/LuaSnip",
  version = "*",
  build = "make install_jsregexp",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load("friendly-snippets")
  end,
}
