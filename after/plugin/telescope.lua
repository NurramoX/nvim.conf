local opts = {
  prompt_prefix="🔍"
}

local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

vim.keymap.set('n', '<leader>pf', function () 
  builtin.find_files(themes.get_ivy(opts))
end)

vim.keymap.set('n', '<C-p>', function ()
  builtin.git_files(themes.get_ivy(opts))
end)

vim.keymap.set('n', '<leader>ps', function ()
	builtin.grep_string(themes.get_ivy({ search = vim.fn.input("Grep > ") }))
end)

