return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- lua
        null_ls.builtins.formatting.stylua,
        -- ruby
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.erb_format,
        -- go
        null_ls.builtins.diagnostics.golangci_lint,
        -- html
        null_ls.builtins.formatting.htmlbeautifier,
        -- python
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        -- c
        null_ls.builtins.formatting.clang_format,
        -- sql
        null_ls.builtins.diagnostics.sqlfluff.with({
          extra_args = { "--dialect", "postgres" }, -- change to your dialect
        }),
        null_ls.builtins.formatting.sqlfluff.with({
          extra_args = { "--dialect", "postgres" }, -- change to your dialect
        }),
        -- css
        null_ls.builtins.diagnostics.stylelint,
        null_ls.builtins.formatting.stylelint,
        -- zsh
        null_ls.builtins.diagnostics.zsh,
        -- assembly
        null_ls.builtins.formatting.asmfmt,
        -- javascript
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
      },
    })
  end,
}
