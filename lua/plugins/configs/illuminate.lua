vim.cmp([[
    augroup illuminate_augroup
        autocmd!
        autocmd VimEnter * hi link illuminatedWord CursorLine
    augroup END
]])
