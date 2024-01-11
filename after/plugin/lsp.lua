local lsp_zero = require('lsp-zero')
vim. g. lsp_zero_api_warnings = 0

lsp_zero.set_server_config({
  single_file_support = false,
  capabilities = {
    textDocument = {
      foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
      }
    }
  }
})

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
  lsp_zero.buffer_autoformat()
end)

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['pylsp'] = {'python', },
    ['rust_analyzer'] = {'rust'},
    ['angularls'] = {'angularls'},
    ['cssls'] = {'cssls'},
    ['eslint'] = {'eslint'},
    ['html'] = {'html'},
    ['tsserver'] = {'tsserver'},
    ['remark_ls'] = {'remark_ls'},
  },
  diagnosticls = {
    filetypes = {},
    init_options = {
      linters = {
        pylsp = {
          pylint = {
            enabled = false,
          },
        },
      },
      filetypes = {},
      formatters = {'prettier'},
    }
  }
})

require('mason').setup({ensure_installed = {'prettier'},})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'pylsp', 'rust_analyzer', 'angularls', 'cssls', 'eslint', 'html', 'tsserver', 'remark_ls'},
    handlers = {
    lsp_zero.default_setup,
  }
})
