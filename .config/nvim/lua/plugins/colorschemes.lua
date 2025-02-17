-- colorscheme
return {
  {
    "Mofiqul/dracula.nvim",
    enabled = false,
    config = function()
      vim.cmd.colorscheme("dracula")
    end,
  },
  {
    "folke/tokyonight.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = {},
    style = "night",
    config = function()
      vim.cmd.colorscheme("tokyonight")
      -- change color of relative line numbers
      vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#51B3EC", bold = false })
      vim.api.nvim_set_hl(0, "LineNr", { fg = "white", bold = true })
      vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FB508F", bold = false })
    end,
  },
}
