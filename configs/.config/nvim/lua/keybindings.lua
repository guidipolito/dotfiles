-- Autocomplete key bindings is in cmp configuration inside of plugins/cmp.lua
local map = vim.keymap.set
local ls = require"luasnip"

vim.g.mapleader = " "


-- =================
-- Buffer | movement
-- =================
    map("n", "<Leader>c", "<cmd>Bdelete<CR>") -- vim-byye
    map("n", "<S-l>", "<cmd>bn<cr>")
    map("n", "<S-h>", "<cmd>bp<cr>")
    map("n", "<Leader>e", "<cmd>NvimTreeFocus<CR>")

-- =================
-- Telescope
-- =================
    map("n", "<Leader>ff", "<cmd>Telescope find_files<cr>")
    map("n", "<Leader>fw", "<cmd>Telescope live_grep<cr>")
    map("n", "<Leader>fb", "<cmd>Telescope buffers<cr>")
    map("n", "<Leader>fp", "<cmd>Telescope projects<cr>")
    map("n", "<Leader>fe", "<cmd>Telescope emoji<cr>")

-- =================
-- Lua snip bindings
-- =================
    map({"i", "s"}, "<c-k>", function()
        if ls.expand_or_jumpable() then 
            ls.expand_or_jump()
        end
    end, { silent = true })

    map({"i", "s"}, "<c-j>", function()
        if ls.jumpable(-1) then 
            ls.jump(-1)
        end
    end, { silent = true })


    map({"i", "s"}, "<c-l>", function()
        if ls.choice_active() then
            ls.change_choice(1)
        end
    end, { silent = true })

    map("n","<Leader>r", "<cmd>source ~/.config/nvim/lua/plugins/luasnip.lua<CR>")

-- =================
-- Terminal bindings
-- =================
    map("n","<Leader>t", "<cmd>ToggleTerm direction=float <cr>")
    map("n","<Leader>gg", "<cmd>TermExec direction=float cmd='lazygit'<cr>")
    map("n","<Leader>\\", "<cmd>TermExec direction='float'<cr>")

-- =================
-- Lsp
-- =================
    map("n", "<Leader>lh", function() vim.lsp.buf.hover() end)
    map("n", "<Leader>lr", function() vim.lsp.buf.references() end)
    map("n", "<Leader>li", function() vim.lsp.buf.implementation() end)
    map("n", "<Leader>lf", function() vim.lsp.buf.format() end)
    map("n", "<Leader>ld", function() vim.lsp.buf.definition() end)

-- =================
-- Neovide
-- =================
    if(vim.g.neovide)then
        map("c", "<c-v>", "<c-r>+")
        function adjustFontSize(amount)
            vim.g.fontsize = vim.g.fontsize+amount
            vim.g.updateFont()
        end
        map("n", "<C-=>", function() adjustFontSize(1) end)
        map("n", "<C-->", function() adjustFontSize(-1) end)
    end
