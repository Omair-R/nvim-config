require "plugins.plugins"

local _plugins = {
    "plugins.configs.colorscheme",
    "plugins.configs.telescope",
    "plugins.configs.toggleterm",
    "plugins.configs.treesitter",
    "plugins.configs.nvim_tree",
    "plugins.configs.trouble",
    "plugins.configs.autopairs",
    "plugins.configs.lualine",
    "plugins.configs.indent_blankline",
    "plugins.configs.comment",
    "plugins.configs.alpha_nvim",
    "plugins.configs.lsp_zero",
    "plugins.configs.wilder",
    "plugins.configs.illuminate",
}

for _, plug in pairs(_plugins) do
    if not pcall(require, plug) then -- protect against first use errors.
        return
    end
end
