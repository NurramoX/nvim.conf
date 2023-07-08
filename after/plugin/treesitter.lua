require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "rust", "toml", "yaml" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages 
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true
  },
}


-- Treesitter folding 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.o.foldlevelstart = 99
