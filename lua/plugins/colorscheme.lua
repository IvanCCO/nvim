return {
  "craftzdog/solarized-osaka.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
    }
  end,

  {
    "ellisonleao/gruvbox.nvim",
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
}
