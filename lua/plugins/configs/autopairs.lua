local status_ok, autopair = pcall(require, "nvim-autopairs")
if not status_ok then
    return
end

autopair.setup {
    check_ts = true, -- use treesitter to check for the pairs.
    ts_config = {
        lua = { "string", "comment", "source" },
        javascript = { "string", "template_string", "source" },
        cpp = { "string_literal", "comment", "source" },
        c = { "string_literal", "comment", "source" },
        python = { "string", "comment", "source" }
    },
    fast_wrap = {},
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
