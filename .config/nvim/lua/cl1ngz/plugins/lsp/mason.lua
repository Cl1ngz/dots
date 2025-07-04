return {
  "williamboman/mason.nvim",
  lazy = false, -- load Mason at startup to ensure installations are ready
  dependencies = {
    "williamboman/mason-lspconfig.nvim", -- Mason extension for LSP
    "WhoIsSethDaniel/mason-tool-installer.nvim", -- Auto-install tools
  },
  config = function()
    -- import Mason and its extensions
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    -- enable Mason with icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- ensure these LSP servers are installed (via mason-lspconfig)
    mason_lspconfig.setup({
      ensure_installed = {
        -- Web Dev servers
        "tsserver", -- TypeScript/JavaScript
        "html", -- HTML
        "cssls", -- CSS
        "tailwindcss", -- TailwindCSS
        "svelte", -- Svelte

        -- Other languages
        "lua_ls", -- Lua
        "pyright", -- Python
        "bashls", -- Bash
        "clangd", -- C/C++
        "graphql", -- GraphQL
        "emmet_ls", -- Emmet (for HTML/CSS)
        "prismals", -- Prisma
        -- (Removed "luacheck" – not an LSP server)
        -- (Add any other LSP servers you need to install above)
      },
      -- No handlers here – LSP setup is done in lspconfig.lua
    })

    -- ensure these tools/formatters are installed (via mason-tool-installer)
    mason_tool_installer.setup({
      ensure_installed = {
        -- Web Dev tools
        "prettier", -- Formatter for JS/TS/CSS/HTML
        "eslint_d", -- Linter for JS/TS

        -- Lua
        "stylua", -- Lua formatter
        -- "luacheck", -- (Optional: Lua linter, if needed)

        -- Python
        "isort", -- Import sorter
        "black", -- Formatter
        "pylint", -- Linter

        -- Shell
        "shellcheck", -- Bash linter
        "shfmt", -- Bash formatter

        -- C/C++
        "clang-format", -- C/C++ formatter

        -- (Add any additional formatters/linters as needed)
      },
    })
  end,
}
