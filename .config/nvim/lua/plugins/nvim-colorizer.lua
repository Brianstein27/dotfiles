return {
  "catgoose/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = {
    user_default_options = {
      tailwind = true,
      mode = "virtualtext",
      virtualtext_inline = true,
      virtualtext = "██",
    },
  },
}
