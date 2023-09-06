vim.keymap.set("n", "<leader><leader>", '<cmd>NvimTreeToggle<cr>', {})

require("nvim-tree").setup({
    sync_root_with_cwd = true,
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
        icons = {
            git_placement = "signcolumn",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    filters = {
        dotfiles = true,
    },
})
