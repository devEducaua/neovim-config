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

ls.add_snippets("html", {
    s("html", {
        t("<DOCTYPE html>"),
        t("<html>"),
        t({"", "<head>"}),
        t({"", "\t<meta charset='UTF-8'"}),
        t({"", "\t<meta name='viewport' content='width=device-width, initial-scale=1.0'>"}),
        t({"", "\t<title>Title</title>"}),
        t({"", "\t<link href='style.css' rel='stylesheet'>"}),
        t({"", "</head>"}),
        t({"", "<body>"}),
        t({"", "\t"}), i(1),
        t({"", "</body>"}),
        t({"", "</html>"}),
    })
})
