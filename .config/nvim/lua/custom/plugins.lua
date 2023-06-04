local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- fix indentation for tsx files
  { "pangloss/vim-javascript" }, -- syntax
  { "leafgarland/typescript-vim" }, -- dependency?
  { "peitalin/vim-jsx-typescript" }, -- fixes indents
  -- manage databases in vim
  -- configured carefully so as to play nicely with nvim-cmp
  {
    "kristijanhusak/vim-dadbod-ui",
    cmd = "DBUI", -- load it when we call it
    dependencies = {
      "tpope/vim-dadbod",
      -- note: lazy=false on completions will fuck with nvim-cmp
      "kristijanhusak/vim-dadbod-completion",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "tailwindcss-language-server",
      },
    },
  },
}
return plugins
