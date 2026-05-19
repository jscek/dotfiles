return {
  "catppuccin/nvim", 
  priority = 1000,
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      flavour = "macchiato",
      transparent_background = true,
      integrations = {
        cmp = true,
        nvimtree = true,
        treesitter = true
      }
    })

    vim.cmd.colorscheme "catppuccin-macchiato"
  end
}
