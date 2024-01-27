local highlight = {}
local colors = { '#fbf8cc', '#ffcfd2', '#f1c0e8', '#e0bdec', '#cfbaf0', '#fbf8cc' }

for index, _ in pairs(colors) do
    local name = 'IndentationColor' .. index
    table.insert(highlight, name);
end

local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    for index, color in pairs(colors) do
        vim.api.nvim_set_hl(0, highlight[index], { fg = color })
    end
end)

require("ibl").setup { indent = { highlight = highlight } }
