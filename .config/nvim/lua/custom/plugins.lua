local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- fix indentation for tsx files
  { "leafgarland/typescript-vim" }, -- dependency?
  { "peitalin/vim-jsx-typescript" }, -- fixes indents
  -- manage databases in vim 
  { "tpope/vim-dadbod", lazy = false },
  {
    "kristijanhusak/vim-dadbod-ui",
    -- requires = "tpope/vim-dadbod",
    lazy = false,
  },
  { "kristijanhusak/vim-dadbod-completion", lazy = false },
}
return plugins
