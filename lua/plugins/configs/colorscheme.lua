local colorscheme = "catppuccin-mocha" -- latte, frappe, macchiato, mocha
-- local colorscheme = "kanagawa-dragon" -- wave, dragon, lotus

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
