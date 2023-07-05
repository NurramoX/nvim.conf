local lsp = require('lsp-zero')

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil



lsp.setup_nvim_cmp({
  mapping = cmp_mappings,
})


lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr, remap = false })
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
  vim.keymap.set("n", "B", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
end)


lsp.setup()
