return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  enabled = true,
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      options = {
        theme = "auto",
        disabled_filetypes = { "oil" },
        component_separators = { left = "︱", right = "︱" },
        section_separators = { left = "", right = "" },
      },
      winbar = {
        lualine_c = {
          {
            function()
              local buffers = require("buffalo").buffers()
              return buffers .. " 󱂬"
            end,
            component_separators = { left = "︱", right = "︱" },
          },
          {
            "filename",
            path = 1,
            color = { fg = "#c099ff" },
          },
        },
      },
      inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { "filename", path = 1 } },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = { { "diagnostics", always_visible = true } },
        lualine_z = { "progress" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { "filename", path = 1 } },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
