return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        pickers = {
          man_pages = {
            theme = "ivy",
            initial_mode = "normal",
          },
          keymaps = {
            theme = "ivy",
            initial_mode = "normal",
          },
          buffers = {
            theme = "ivy",
            initial_mode = "normal",
          },
          lsp_references = {
            theme = "ivy",
            initial_mode = "normal",
          },
          live_grep = {
            theme = "ivy",
            initial_mode = "normal",
          },
          find_files = {
            theme = "ivy",
            initial_mode = "normal",
          },
        },
        extensions = {
          fzf = {},
        },
      })

      require("telescope").load_extension("fzf")
      require("telescope").load_extension("noice")
    end,
  },
}
