local lint = require("lint")

lint.linters_by_ft = {
  javascript = { "eslint" },
  typescript = { "eslint" },
  javascriptreact = { "eslint" },
  typescriptreact = { "eslint" },
  svelte = { "eslint" },
}

local linter_configs = {
  eslint = {
    ".eslintrc",
    ".eslintrc.js",
    ".eslintrc.cjs",
    ".eslintrc.json",
    ".eslintrc.yaml",
    ".eslintrc.yml",
    "eslint.config.js",
    "eslint.config.mjs",
    "eslint.config.cjs",
  },
}

local function configured_linters()
  local names = lint._resolve_linter_by_ft(vim.bo.filetype)
  return vim.tbl_filter(function(name)
    local configs = linter_configs[name]
    return configs == nil or vim.fs.root(0, configs) ~= nil
  end, names)
end

local lint_timer
local function debounce_lint()
  if lint_timer then
    lint_timer:stop()
  end

  lint_timer = vim.defer_fn(function()
    local names = configured_linters()
    if #names > 0 then
      lint.try_lint(names)
    end
  end, 100)
end

vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
  group = vim.api.nvim_create_augroup("user-lint", { clear = true }),
  callback = debounce_lint,
})

vim.keymap.set("n", "<leader>tl", function()
  local names = configured_linters()
  if #names > 0 then
    lint.try_lint(names)
  else
    vim.notify("No linters available for this file", vim.log.levels.INFO)
  end
end, { desc = "Trigger linting" })
