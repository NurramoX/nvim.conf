require('nvim-treesitter.configs').setup {
  auto_install = true,
  highlight = {
    enable = true
  }
}


-- Treesitter folding 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.o.foldlevelstart = 99
