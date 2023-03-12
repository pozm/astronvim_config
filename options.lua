-- set vim options here (vim.<first_key>.<second_key> = value)
local win = vim.fn.has('win32') == 1;
return {
  opt = {
    tabstop = 4,
    shiftwidth = 4,
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = false,          -- sets vim.opt.wrap
    guifont = { "FiraCode nf", "h14" },
    shell = win and "pwsh.exe",
    shellcmdflag =
        win and
        "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = win and "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellpipe = win and "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = win and "",
    shellxquote = win and ""
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_mode = 3,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    neovide_floating_blur_amount_x = 4.0,
    neovide_floating_blur_amount_y = 4.0,
    neovide_refresh_rate = 240,
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
