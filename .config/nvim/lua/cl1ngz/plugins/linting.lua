return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    -- Add linters for various file types
    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      svelte = { "eslint_d" },
      python = { "pylint" },

      -- Add linters for C, Rust, Lua, and Bash
      c = { "cppcheck" },
      cpp = { "cppcheck" },
      -- rust = { "clippy" },
      lua = { "luacheck" },
      sh = { "shellcheck" },
      bash = { "shellcheck" },
    }

    -- Auto group for linting
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    -- Auto lint on certain events
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    -- Manually trigger linting with a keymap
    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
