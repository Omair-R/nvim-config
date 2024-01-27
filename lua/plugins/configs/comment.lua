require('Comment').setup({
    toggler  = { -- direct toggle in n mode
        line = '<leader>cc',
        block = '<leader>CC',
    },
    opleader = { -- operator bending in v and n mode
        line = '<leader>c',
        block = '<leader>C',
    },
})
