require('ofirkai').setup {
    scheme = require('ofirkai').scheme -- Option to override scheme
}

vim.cmd.colorscheme("ofirkai")
require("lualine").setup {
    options = { 
        theme = 'molokai'
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
    }
}

function ShowBackground()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
