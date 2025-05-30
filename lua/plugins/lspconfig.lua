return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require 'lspconfig'

    -- for fold
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    -- lua
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
      capabilities = capabilities,
    }

    -- c and c++
    lspconfig.clangd.setup {
      capabilities = capabilities,
    }

    -- python
    lspconfig.pyright.setup {
      capabilities = capabilities,
    }

    -- for python formatting
    lspconfig.ruff.setup {}
  end,
}
