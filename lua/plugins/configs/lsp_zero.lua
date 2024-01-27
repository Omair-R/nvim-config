-- lsp zero setup
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

lsp_zero.set_sign_icons({
    error = '✖',
    warn = '⚠',
    hint = '⚐',
    info = '🛈'
})

vim.diagnostic.config({
    virtual_text = false,
    severity_sort = true,
    float = {
        style = 'minimal',
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

-- Mason setup
require('mason').setup({})

-- -- lsp setup
local lspconfig = require('lspconfig')
require('mason-lspconfig').setup({
    ensure_installed = {
        'pyright',
        'gopls',
        'clangd',
        'cmake',
    },

    handlers = {
        lsp_zero.default_setup,
        pyright = function()
            lspconfig.pyright.setup {}
        end,
        clangd = function()
            lspconfig.clangd.setup {}
        end,
        cmake = function()
            lspconfig.cmake.setup {
                filetypes = {
                    "cmake", "CMakeLists.txt"
                }
            }
        end,

    },
})

-- -- linter setup
require('mason-nvim-lint').setup({
    ensure_installed = {
        'flake8',
    },
})


-- Auto complete (with cmp)
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_format = lsp_zero.cmp_format()
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    formatting = cmp_format,
    preselect = cmp.PreselectMode.Item,
    window = {
        documentation = cmp.config.window.bordered()
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'path' },
        { name = 'buffer',  keyword_length = 3 },
        { name = 'luasnip', keyword_length = 2 },
    },
    mapping = cmp.mapping.preset.insert({
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<Tab>'] = cmp_action.tab_complete(),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Toggle completion menu
        ['<C-e>'] = cmp_action.toggle_completion(),

        -- Navigate between items
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
    })
})
