-- rustacean.nvim  (your plugin spec file)
return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = false,
  init = function()
    -- this runs *before* rustaceanvim bootstraps
    vim.g.rustaceanvim = {
      -- LSP configuration:
      server = {
        -- any rust-analyzer settings you like:
        default_settings = {
          ["rust-analyzer"] = {
            procMacro = { enable = true }, -- expand attribute macros
            cargo = { allFeatures = true },
          },
        },
        -- map K to rustaceanvim’s own hover+actions:
        on_attach = function(client, bufnr)
          vim.keymap.set("n", "K", function()
            -- this shows docs *and* hover-actions
            vim.cmd.RustLsp({ "hover", "actions" })
          end, { buffer = bufnr, silent = true })
        end,
      },
      -- you can also configure tools, dap, etc. here
    }
  end,
}
