local lspconfig = require('lspconfig')
local cmp = require('cmp')

lspconfig.ts_ls.setup {}

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- Si usas otro snippet engine, cámbialo aquí
    end,
  },
  sources = {
    { name = 'nvim_lsp' }, -- Fuente LSP para autocompletado
    { name = 'buffer' },   -- Completado basado en el contenido del buffer
    { name = 'path' },     -- Completado de rutas de archivo
  },
  mapping = {
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback() -- Si no hay sugerencias, Tab funciona como siempre
      end
    end,  { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = 'rounded'
  }
)
