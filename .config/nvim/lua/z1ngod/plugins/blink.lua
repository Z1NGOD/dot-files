require("blink.cmp").setup({
  keymap = {
    preset = "enter",
    ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-s>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-e>"] = { "hide" },
    ["<C-k>"] = { "select_prev", "fallback" },
    ["<C-j>"] = { "select_next", "fallback" },
  },
  cmdline = {
    keymap = {
      preset = "super-tab",
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
    },
    completion = {
      menu = { auto_show = true },
    },
  },
  completion = {
    keyword = { range = "full" },
    menu = {
      draw = {
        columns = {
          { "label", "label_description", gap = 1 },
          { "kind_icon", "kind", gap = 1 },
        },
      },
    },
    documentation = { auto_show = true },
  },
  fuzzy = {
    implementation = "lua",
    sorts = { "exact", "score", "sort_text" },
  },
  signature = { enabled = true },
  snippets = { preset = "default" },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
    providers = {
      path = {
        opts = {
          get_cwd = function(context)
            return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
          end,
          show_hidden_files_by_default = true,
        },
      },
      buffer = { min_keyword_length = 2 },
      snippets = {
        min_keyword_length = 2,
        should_show_items = function(ctx)
          return ctx.trigger.initial_kind ~= "trigger_character"
        end,
      },
    },
  },
})
