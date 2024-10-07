return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    local transparent = false -- Set to true if you want transparency
    local style = "wave"      -- Choose the "wave" style for a less intense dark theme

    require("kanagawa").setup({
      theme = style,  -- Set the theme style to "wave" for a softer dark experience
      transparent = transparent,
      colors = {
        theme = {
          all = {
            ui = {
              bg = "#1F1F28",   -- Dark but softer background for daytime use
              bg_gutter = "#2A2A37",
              bg_visual = "#333342",
              bg_search = "#5B5E6B",
              bg_popup = "#242432",
              bg_status = "#1F1F28",
              fg = "#DCD7BA",   -- Light foreground, softer on the eyes
              fg_dark = "#C8C093",
              fg_gutter = "#6F757E",
              border = "#484852",
            }
          }
        }
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          Normal = { bg = transparent and "NONE" or theme.ui.bg, fg = theme.ui.fg },
          Visual = { bg = theme.ui.bg_visual },
          Search = { bg = theme.ui.bg_search },
          StatusLine = { bg = theme.ui.bg_status, fg = theme.ui.fg },
          VertSplit = { fg = theme.ui.border },
          LineNr = { fg = theme.ui.fg_gutter },
          -- Additional highlight groups can be customized here if needed
        }
      end,
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme kanagawa-" .. style)
  end,
}

