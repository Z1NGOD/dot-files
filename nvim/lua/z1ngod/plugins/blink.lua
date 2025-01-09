return {
  "saghen/blink.cmp",
  dependencies = { "L3MON4D3/LuaSnip", version = "*" },
  version = "*",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "enter",
      cmdline = {
        preset = "super-tab",
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
      },
      ["<C-s>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide" },

      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
    },

    appearance = {
      use_nvim_cmp_as_default = true,
    },

    completion = {
      keyword = { range = "full" },
      menu = {
        border = "rounded",
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind", gap = 1 },
          },
        },
      },
      documentation = { window = { border = "rounded" }, auto_show = true },
    },

    signature = { enabled = true, window = { border = "rounded" } },

    snippets = {
      preset = "luasnip",
      expand = function(snippet)
        require("luasnip").lsp_expand(snippet)
      end,
      active = function(filter)
        if filter and filter.direction then
          return require("luasnip").jumpable(filter.direction)
        end
        return require("luasnip").in_snippet()
      end,
      jump = function(direction)
        require("luasnip").jump(direction)
      end,
    },

    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          enabled = true,
        },
        lsp = {
          name = "LSP",
          enabled = true,
          module = "blink.cmp.sources.lsp",
        },
        path = {
          name = "Path",
          module = "blink.cmp.sources.path",
          fallbacks = { "snippets", "buffer" },
          enabled = true,
          opts = {
            trailing_slash = false,
            label_trailing_slash = true,
            get_cwd = function(context)
              return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
            end,
            show_hidden_files_by_default = true,
          },
        },
        buffer = { name = "Buffer", module = "blink.cmp.sources.buffer", min_keyword_length = 2 },
        snippets = {
          name = "snippets",
          enabled = true,
          module = "blink.cmp.sources.snippets",
          should_show_items = function(ctx)
            return ctx.trigger.initial_kind ~= "trigger_character"
          end,
          min_keyword_length = 2,
        },
      },
    },
  },
}
