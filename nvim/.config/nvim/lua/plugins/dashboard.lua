return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')
        dashboard.section.header.val = {
            [[                                                    ]],
            [[                                                    ]],
            [[                                                    ]],
            [[  ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗  ]],
            [[  ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║  ]],
            [[  ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║  ]],
            [[  ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║  ]],
            [[  ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║  ]],
            [[  ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ]],
            [[                                                    ]],
            [[                                                    ]],
            [[                                                    ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button('n', ' > New File', '<cmd>ene<CR>'),
            dashboard.button('f', '󰱼 > Find Files', '<cmd>Telescope find_files<CR>'),
            dashboard.button('r', ' > Find Recent Files', '<cmd>Telescope oldfiles<CR>'),
            dashboard.button('c', ' > Configuration', '<cmd>edit ~/.config/nvim/init.lua<CR>'),
            dashboard.button('q', ' > Quit NVIM', '<cmd>qa<CR>')
        }

        local function footer()
         return "Be Blazingly Fast"
        end

        dashboard.section.footer.val = footer()

        dashboard.section.footer.opts.hl = "Type"
        dashboard.section.header.opts.hl = "Include"
        dashboard.section.buttons.opts.hl = "Keyword"

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end
}
