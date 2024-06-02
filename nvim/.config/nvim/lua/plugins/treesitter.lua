return{
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs") 
        config.setup({
            ensure_installed = { "c", "lua", "css", "go", "python", "javascript", "html", "vue" },
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
