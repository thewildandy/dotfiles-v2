local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

lspconfig.tsserver.setup{}
lspconfig.tailwindcss.setup{}
lspconfig.prismals.setup{}
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ['rust-analyzser'] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
})

