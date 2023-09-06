vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "jk", "<Esc>", {noremap = true})
  
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<Leader>wt', [[:%s/\s\+$//e<cr>]])

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>ff", "zfa}")
vim.keymap.set("n", "<leader>uf", "za")
vim.keymap.set("n", "<leader>ufa", "zR")
vim.keymap.set("n", "<leader>fa", "zM")

vim.keymap.set("n", "<leader>jj", "10j")
vim.keymap.set("n", "<leader>kk", "10k")

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>gol", "<cmd>CellularAutomaton game_of_life<CR>")

vim.keymap.set("n", "<leader>sh", "<cmd>ClangdSwitchSourceHeader<CR>")

vim.keymap.set("n", "<leader>b", function()
    vim.cmd("w")
    vim.cmd("!python3 %")
end)
