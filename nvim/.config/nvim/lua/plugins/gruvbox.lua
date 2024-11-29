return {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  priority = 1000,
  config = function()
    local gruv = require("gruvbox")
    gruv.setup({
      transparent_mode = true,
    })
    vim.cmd.colorscheme("gruvbox")
  end,
}
