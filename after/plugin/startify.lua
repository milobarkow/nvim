vim.keymap.set('n', '<leader>ss', '<cmd>Startify<cr>', {})
vim.keymap.set('n', '<C-s>', '<cmd>SSave<cr>', {})

vim.g.startify_list_order = {"sessions", "files", "bookmarks"}
vim.g.startify_lists = { 
    { type = 'sessions',  header = {'     Sessions'}       },
    { type = 'files',     header = {'     MRU'}            },
    { type = 'bookmarks', header = {'     Bookmarks'}      },
}
vim.g.startify_bookmarks = {}
local header = {
    " b.             8 8 8888888888       ,o888888o.  `8.`888b           ,8'  8 8888          ,8.       ,8.          ",
    " 888o.          8 8 8888          . 8888     `88. `8.`888b         ,8'   8 8888         ,888.     ,888.         ",
    " Y88888o.       8 8 8888         ,8 8888       `8b `8.`888b       ,8'    8 8888        .`8888.   .`8888.        ",
    " .`Y888888o.    8 8 8888         88 8888        `8b `8.`888b     ,8'     8 8888       ,8.`8888. ,8.`8888.       ",
    " 8o. `Y888888o. 8 8 888888888888 88 8888         88  `8.`888b   ,8'      8 8888      ,8'8.`8888,8^8.`8888.      ",
    " 8`Y8o. `Y88888o8 8 8888         88 8888         88   `8.`888b ,8'       8 8888     ,8' `8.`8888' `8.`8888.     ",
    " 8   `Y8o. `Y8888 8 8888         88 8888        ,8P    `8.`888b8'        8 8888    ,8'   `8.`88'   `8.`8888.    ",
    " 8      `Y8o. `Y8 8 8888         `8 8888       ,8P      `8.`888'         8 8888   ,8'     `8.`'     `8.`8888.   ",
    " 8         `Y8o.` 8 8888          ` 8888     ,88'        `8.`8'          8 8888  ,8'       `8        `8.`8888.  ",
    " 8            `Yo 8 888888888888     `8888888P'           `8.`           8 8888 ,8'         `         `8.`8888. ",
}
vim.g.startify_custom_header = vim.fn['startify#center'](header)
