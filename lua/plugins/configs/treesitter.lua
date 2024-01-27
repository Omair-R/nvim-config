require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "python", "julia", "go", "javascript", "typescript", "css", "html", "glsl", "hlsl", "cmake", "scss" },

    sync_install = false,
    auto_install = true,
    ignore_install = { "" },

    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true, disable = { "yaml" } },
}
