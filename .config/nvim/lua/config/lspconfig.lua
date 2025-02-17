local capabilities = require('blink.cmp').get_lsp_capabilities()

require 'lspconfig'.lua_ls.setup { capabilities = capabilities }
require 'lspconfig'.asm_lsp.setup { capabilities = capabilities }
require 'lspconfig'.ts_ls.setup { capabilities = capabilities }
require 'lspconfig'.pyright.setup { capabilities = capabilities }
require 'lspconfig'.clangd.setup { capabilities = capabilities }
require 'lspconfig'.css_lsp.setup { capabilities = capabilities }
require 'lspconfig'.sqlls.setup { capabilities = capabilities }
require 'lspconfig'.emmet_ls.setup { capabilities = capabilities }
require 'lspconfig'.solargraph.setup { capabilities = capabilities }
require 'lspconfig'.stimulus_ls.setup { capabilities = capabilities }
require 'lspconfig'.marksman.setup { capabilities = capabilities }
require 'lspconfig'.tailwindcss.setup { capabilities = capabilities }
require 'lspconfig'.golangci_lint_ls.setup { capabilities = capabilities }
