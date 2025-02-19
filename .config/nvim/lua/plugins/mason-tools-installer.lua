return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  enabled = false,
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua",
        "rubocop",
        "htmlbeautifier",
        "mypy",
        "black",
        "isort",
        "sqlfluff",
        "stylelint",
        "asmfmt",
        "prettier",
        "eslint_d",
        "ts_ls",
        "pyright",
        "clangd",
        "css_lsp",
        "sqlls",
        "emmet_ls",
        "solargraph",
        "ruby_lsp",
        "stimulus_ls",
        "marksman",
        "tailwindcss",
        "golangci_lint_ls",
      },
    })
  end,
}
