require 'tabline'.setup {
    enable = true,
    options = {
        section_separators = { '', '' },
        component_separators = { '' },
        max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
        show_tabs_always = false,    -- this shows tabs only when there are more than one tab or if the first tab is named
        show_devicons = true,        -- this shows devicons in buffer section
        show_bufnr = true,           -- this appends [bufnr] to buffer section,
        show_filename_only = true,   -- shows base filename only instead of relative path in filename
        modified_icon = "+ ",        -- change the default modified icon
        modified_italic = false,     -- set to true by default; this determines whether the filename turns italic if modified
        show_tabs_only = false,      -- this shows only tabs instead of tabs + buffers
    }
}
vim.cmd [[
            set guioptions-=e " Use showtabline in gui vim
            set sessionoptions+=tabpages,globals " store tabpages and globals in session
            ]]
vim.keymap.set('n', '<leader>tc', '<cmd>bd<cr>', {})
vim.keymap.set('n', '<C-p>', '<cmd>TablineBufferNext<cr>', {})
vim.keymap.set('n', '<C-o>', '<cmd>TablineBufferPrevious<cr>', {})
