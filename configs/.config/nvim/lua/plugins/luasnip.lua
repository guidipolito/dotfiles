-- doc
-- https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md#adding-snippets
--
local ls = require("luasnip")
local parse = require("luasnip.util.parser").parse_snippet
local s = ls.snippet
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

-- Add snippets from friendly-snippets plugin
require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config {
    -- Remember last snippet to jump back
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,

    -- Highlights 
    -- ext_opts = {
    --     [types.choiceNode] = {
    --         active = {
    --             virt_text = { {"<-", "Error" } }
    --         }
    --     }
    -- }
}


local react = {
    s("state", fmt("const [ {}, set{} ] = useState({})", 
        { i(1), rep(1), i(2) }
    )),
}
ls.add_snippets("javascriptreact", react )
