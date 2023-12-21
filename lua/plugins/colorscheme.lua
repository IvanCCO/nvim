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
    priority = 1000,
    config = true,
    opts = function()
      return {
        transparent_mode = true,
      }
    end,
  },
}
