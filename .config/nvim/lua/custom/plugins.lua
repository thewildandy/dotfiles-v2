local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- fix indentation for tsx files
  { "leafgarland/typescript-vim" }, -- dependency?
  { "peitalin/vim-jsx-typescript" }, -- fixes indents
}
return plugins
