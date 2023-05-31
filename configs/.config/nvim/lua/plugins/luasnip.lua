-- doc
-- https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md#adding-snippets
--
local ls = require("luasnip")
local parse = require("luasnip.util.parser").parse_snippet
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

-- Add snippets from friendly-snippets plugin
require("luasnip.loaders.from_vscode").lazy_load({ path = './snippets'})

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
local blade = {
    s("@if", fmt("@if({})\n\t{}\n@endif", { i(1), i(2) })),
    s({ trig = "@extends", name="Extends", }, 
        fmt("@extends({})", i(1))
    ),
    s({ trig = "@yield", name="Yield content section", }, 
        fmt("@yield({})", i(1))
    ),
    s({ trig = "@section", name="Content section", }, 
        fmt("@section({})\n\t{}\n@endsection", { i(1), i(2) })
    ),
    s({ trig = "@include", name="Include view", }, 
        fmt("@include({})", i(1))
    ),
    s({ trig = "@ifelse", name="If and else", }, 
        fmt("@if({})\n\t{}\n@else\n\t{}\n@endif", { i(1), i(2), i(3) })
    ),
    s({ trig = "@hasSection", name="Has a section", }, 
        fmt("@hasSection({})\n\t{}\n@else\n\t{}\n@endif", { i(1), i(2), i(3) })
    ),
    s({ trig = "@unless", name="Include view", }, 
        fmt("@unless({})\n\t{}\n@unless", { i(1), i(2) })
    ),
    -- Loops
    s({ trig = "@for", name="For", }, 
        fmt("@for(${1} = {2}; ${1} < {3}; ${1}++)\n\t{4}\n@endfor", { 
            i(1, "i"), i(2, "0"), i(3, "$count"), i(4)
        }, {repeat_duplicates = true})
    ),
    s({ trig = "@foreach", name="foreach something", }, 
        fmt("@foreach(${} as ${})\n\t{}\n@endforeach", { i(1, "collection"), i(2, "item"), i(3) })
    ),
    s({ trig = "@forelse", name="forelse" }, 
        fmt("@forelse(${} as ${})\n\t{}\n@empty\n\t{}\n@endforelse", { i(1, "collection"), i(2, "item"), i(3), i(4) })
    ),
    s({ trig = "@while", name="forelse" }, 
        fmt("@while({})\n\t{}\n@endwhile", { i(1, "true"), i(2) })
    ),
    -- endloops
    s({ trig = "@unless", name="Include view", }, 
        fmt("@unless({})\n\t{}\n@unless", { i(1), i(2) })
    ),
}
ls.add_snippets("javascriptreact", react )
ls.add_snippets("blade", blade)
