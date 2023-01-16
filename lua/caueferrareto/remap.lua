local function map(mode, lhs, rhs, custom_options)
  local options = { noremap=true, silent=true }
  if custom_options then
    options = vim.tbl_extend('force', options, custom_options)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end


vim.g.mapleader = " "

map('n', '<F5>', ':silent !love .<CR>', { silent = true })
map('n', '<leader>pv', ':wq')

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "ll", )

