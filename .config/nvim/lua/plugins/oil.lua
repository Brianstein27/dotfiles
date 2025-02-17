return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      float = {
        max_height = 0.6,
        max_width = 0.8,
        preview_split = "right",
      },
      win_options = {
        list = true,
      },
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == ".."
        end,
      },
      keymaps = {
        ["<S-h>"] = { "actions.parent", mode = "n" },
        ["<S-l>"] = { "actions.select", mode = "n" },
        ["<Esc>"] = { "actions.close", mode = "n" },
      },
    })
  end,
}
