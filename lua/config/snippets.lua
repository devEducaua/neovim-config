local ls = require "luasnip"

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("typescript", {
    s("class", {
        t('class '), i(1, "name"), t(' {'),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
        t({ "", ""}), i(0),
        t({ "", 'export default '}), rep(1), t(";")
    })
})

ls.add_snippets("c", {
    s("hello", {
        t("#include <stdio.h>"),
        t({ "", "", "" }),
        t("int main() {"),
        t({ "", '\tprintf("Hello World\\n");'}),
        t({ "", '\treturn 0;'}),
        t({ "", "}" }),
    })
})
