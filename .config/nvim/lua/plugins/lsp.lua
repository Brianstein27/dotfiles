return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {},
        library = {
          { "nvim-dap-ui" },
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
    opts = {
      servers = {
        tailwindcss = {},
        lua_ls = {},
        ts_ls = {},
      },
    },
    config = function()
      require("config.lspconfig")

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then
            return
          end

          if client:supports_method("textDocument/formatting") then
            -- Format the current buffer on save
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
        end,
      })
    end,
  },
}
