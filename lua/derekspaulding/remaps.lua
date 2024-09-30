-- Helper for remapping to a toggle
local function vim_opt_toggle(opt, on, off, name)
  return function ()
    local message = name
    if vim.opt[opt]:get() == off then
      vim.opt[opt] = on
      message = message .. " Enabled"
    else
      vim.opt[opt] = off
      message = message .. " Disabled"
    end
    vim.notify(message)
  end
end

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = 'Open file explorer' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>tn',
  vim_opt_toggle('number', true, false, 'Line Numbers'), { desc = '[t]oggle [n]umber' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Hide search highlighting' })
