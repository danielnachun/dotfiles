return {
  {
    "RRethy/nvim-base16",
    config = function()
      vim.cmd("highlight LineNr guibg=#f0f0f1")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-one-light",
    },
  },
}