return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- import mason-tool-installer
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- configure LSP servers to be installed by mason-lspconfig
    mason_lspconfig.setup({
      ensure_installed = {
        -- JavaScript/TypeScript
        "tsserver", -- JavaScript/TypeScript
        "html", -- HTML
        "cssls", -- CSS
        "tailwindcss", -- Tailwind CSS
        "svelte", -- Svelte

        -- Lua
        "lua_ls", -- Lua LSP
        "luacheck",

        -- Python
        "pyright", -- Python LSP

        -- Bash
        "bashls", -- Bash LSP

        -- C/C++
        "clangd", -- C/C++ LSP

        -- Rust
        -- "rust_analyzer", -- Rust LSP

        -- Other languages
        "graphql", -- GraphQL
        "emmet_ls", -- Emmet (HTML/CSS)
        "prismals", -- Prisma
      },
    })

    -- configure tools to be installed by mason-tool-installer
    mason_tool_installer.setup({
      ensure_installed = {
        -- JavaScript/TypeScript
        "prettier", -- Prettier formatter
        "eslint_d", -- ESLint linter

        -- Lua
        "stylua", -- Lua formatter

        -- Python
        "isort", -- Python import sorter
        "black", -- Python formatter
        "pylint", -- Python linter

        -- Bash
        "shellcheck", -- Bash linter
        "shfmt", -- Bash formatter

        -- C/C++
        "clang-format", -- C/C++ formatter

        -- Rust
        -- "rustfmt", -- Rust formatter
      },
    })
  end,
}
